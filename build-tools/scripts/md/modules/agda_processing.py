#!/usr/bin/env python3

"""
Agda source processing stage for the documentation pipeline.

This module provides pure functional transformations for Agda source files:
- Creating immutable snapshots of source directories
- Converting .agda files to literate .lagda.md format
- Generating .agda-lib configuration files
- Collecting and cataloging processed files

Mathematical Properties:
- All functions are pure (no side effects)
- Transformations are composable and associative
- Error handling via Result monad
- Immutable data structures throughout

Design: Source → Snapshot → Conversion → Collection → Metadata
"""

from __future__ import annotations
from pathlib import Path
import shutil
import logging
import sys
from typing import List, Dict, Set, Optional, Tuple

# Add current directory to Python path for imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from utils.pipeline_types import (
    Result, PipelineError, ErrorType,
    ProcessedFile, FileMetadata, ProcessingStage,
    PipelineState
)

# Try to import agda2lagda converter
try:
    from agda2lagda import convert_agda_to_lagda_md
    HAS_AGDA_CONVERTER = True
except ImportError:
    HAS_AGDA_CONVERTER = False


# =============================================================================
# Pure File Discovery Functions
# =============================================================================

def discover_agda_source_files(src_dir: Path) -> Result[Dict[str, List[Path]], PipelineError]:
    """
    Pure function: Discover and categorize Agda source files.

    Returns mapping of file types to file paths:
    {
        'agda': [Path('Module.agda'), ...],
        'lagda': [Path('Module.lagda'), ...],
        'lagda_md': [Path('Module.lagda.md'), ...]
    }
    """
    try:
        if not src_dir.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.FILE_NOT_FOUND,
                message=f"Source directory not found: {src_dir}",
                context={"src_dir": str(src_dir)}
            ))

        file_categories = {
            'agda': list(src_dir.rglob('*.agda')),
            'lagda': list(src_dir.rglob('*.lagda')),
            'lagda_md': list(src_dir.rglob('*.lagda.md'))
        }

        # Sort for deterministic processing
        for category in file_categories:
            file_categories[category].sort()

        return Result.ok(file_categories)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to discover Agda files: {e}",
            context={"src_dir": str(src_dir)},
            cause=e
        ))


def calculate_file_metadata(file_path: Path, stage: ProcessingStage) -> FileMetadata:
    """Pure function: Calculate metadata for a processed file."""
    try:
        file_size = file_path.stat().st_size if file_path.exists() else 0
        relative_path = file_path.name  # Simplified for now

        return FileMetadata(
            relative_path=Path(relative_path),
            stage=stage,
            processing_time=0.0,  # Will be measured during actual processing
            file_size=file_size,
            checksum=""  # Could add hash calculation if needed
        )
    except Exception:
        # Return default metadata on error
        return FileMetadata(
            relative_path=Path(file_path.name),
            stage=stage,
            processing_time=0.0,
            file_size=0,
            checksum=""
        )


# =============================================================================
# Snapshot Creation Functions
# =============================================================================

def create_source_snapshot(
    source_dir: Path,
    target_dir: Path
) -> Result[List[Path], PipelineError]:
    """
    Pure function: Create immutable snapshot of source directory.

    This is a mathematical copy operation: Source → Snapshot
    Returns list of files in the created snapshot.
    """
    try:
        if not source_dir.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.FILE_NOT_FOUND,
                message=f"Source directory not found: {source_dir}",
                context={"source": str(source_dir), "target": str(target_dir)}
            ))

        # Clean copy operation
        if target_dir.exists():
            shutil.rmtree(target_dir)

        shutil.copytree(source_dir, target_dir)

        # Collect snapshot contents
        snapshot_files = list(target_dir.rglob('*'))
        snapshot_files = [f for f in snapshot_files if f.is_file()]

        logging.info(f"Created snapshot: {len(snapshot_files)} files copied")
        logging.debug(f"  Source: {source_dir}")
        logging.debug(f"  Target: {target_dir}")

        return Result.ok(snapshot_files)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to create source snapshot: {e}",
            context={"source": str(source_dir), "target": str(target_dir)},
            cause=e
        ))


def create_lib_snapshot(
    lib_dir: Path,
    target_dir: Path
) -> Result[List[Path], PipelineError]:
    """
    Pure function: Create snapshot of library extensions directory.
    """
    return create_source_snapshot(lib_dir, target_dir)


# =============================================================================
# File Format Conversion Functions
# =============================================================================

def convert_agda_files_in_snapshot(
    snapshot_dir: Path,
    project_root: Path
) -> Result[List[Path], PipelineError]:
    """
    Pure function: Convert .agda files to .lagda.md format within snapshot.

    Mathematical transformation: .agda → .lagda.md
    Returns list of newly created .lagda.md files.
    """
    if not HAS_AGDA_CONVERTER:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message="Agda converter not available",
            context={"converter": "agda2lagda", "available": False}
        ))

    try:
        logging.info(f"Converting .agda files in snapshot: {snapshot_dir}")

        # Count files before conversion
        agda_files_before = list(snapshot_dir.rglob('*.agda'))
        lagda_md_files_before = set(snapshot_dir.rglob('*.lagda.md'))

        # Run conversion
        conversion_success = convert_agda_to_lagda_md(
            str(snapshot_dir),
            project_root_for_logging=project_root
        )

        if not conversion_success:
            return Result.err(PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message="Agda to lagda.md conversion failed",
                context={"snapshot_dir": str(snapshot_dir)}
            ))

        # Find newly created files
        lagda_md_files_after = set(snapshot_dir.rglob('*.lagda.md'))
        new_files = lagda_md_files_after - lagda_md_files_before

        logging.info(f"Conversion completed: {len(new_files)} files created")

        return Result.ok(sorted(list(new_files)))

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Error during .agda conversion: {e}",
            context={"snapshot_dir": str(snapshot_dir)},
            cause=e
        ))


def cleanup_converted_agda_files(snapshot_dir: Path) -> Result[int, PipelineError]:
    """
    Pure function: Remove .agda files that have corresponding .lagda.md files.

    Mathematical operation: Remove files in set A where corresponding files exist in set B
    Returns count of files removed.
    """
    try:
        agda_files = list(snapshot_dir.rglob('*.agda'))
        removed_count = 0

        for agda_file in agda_files:
            corresponding_lagda_md = agda_file.with_suffix('.lagda.md')
            if corresponding_lagda_md.exists():
                agda_file.unlink(missing_ok=True)
                removed_count += 1
                logging.debug(f"Removed {agda_file.name} (corresponding .lagda.md exists)")

        logging.info(f"Cleanup: removed {removed_count} converted .agda files")
        return Result.ok(removed_count)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Error during .agda cleanup: {e}",
            context={"snapshot_dir": str(snapshot_dir)},
            cause=e
        ))


# =============================================================================
# Agda Library Configuration
# =============================================================================

def generate_agda_lib_content(
    dependencies: List[str],
    include_paths: List[Path]
) -> str:
    """
    Pure function: Generate .agda-lib file content.

    Mathematical transformation: (Dependencies, Paths) → Configuration
    """
    include_strs = [str(path.resolve()) for path in include_paths]

    content_lines = [
        "name: formal-ledger",
        f"depend: {' '.join(dependencies)}",
        f"include: {' '.join(include_strs)}"
    ]

    return '\n'.join(content_lines)


def create_agda_lib_file(
    target_path: Path,
    dependencies: List[str],
    snapshot_src_dir: Path,
    snapshot_lib_dir: Path,
    existing_lib_file: Optional[Path] = None
) -> Result[Path, PipelineError]:
    """
    Pure function: Create or copy .agda-lib file for the snapshot.

    Priority: existing file > generated file
    Returns path to created/copied file.
    """
    try:
        if existing_lib_file and existing_lib_file.exists():
            # Copy existing file
            shutil.copy2(existing_lib_file, target_path)
            logging.info(f"Copied existing .agda-lib file: {existing_lib_file.name}")

            # Log contents for verification
            content = target_path.read_text(encoding='utf-8')
            logging.debug(f"Copied .agda-lib content:\n{content}")

        else:
            # Generate new file
            include_paths = [".", snapshot_src_dir.resolve(), snapshot_lib_dir.resolve()]
            content = generate_agda_lib_content(dependencies, include_paths)

            target_path.parent.mkdir(parents=True, exist_ok=True)
            target_path.write_text(content, encoding='utf-8')

            logging.info(f"Generated new .agda-lib file: {target_path.name}")
            logging.debug(f"Generated .agda-lib content:\n{content}")

        return Result.ok(target_path)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to create .agda-lib file: {e}",
            context={"target": str(target_path)},
            cause=e
        ))


# =============================================================================
# File Collection and Metadata
# =============================================================================

def collect_lagda_md_files(snapshot_dir: Path) -> Result[List[ProcessedFile], PipelineError]:
    """
    Pure function: Collect all .lagda.md files and create metadata.

    Mathematical transformation: Directory → [ProcessedFile]
    """
    try:
        lagda_md_files = list(snapshot_dir.rglob('*.lagda.md'))
        lagda_md_files.sort()  # Deterministic ordering

        processed_files = []

        for file_path in lagda_md_files:
            try:
                relative_path = file_path.relative_to(snapshot_dir)
                metadata = calculate_file_metadata(file_path, ProcessingStage.SNAPSHOT)

                processed_file = ProcessedFile(
                    source_path=file_path,  # In snapshot, source and current are same
                    current_path=file_path,
                    metadata=metadata,
                    content_hash=""  # Could add hash calculation
                )

                processed_files.append(processed_file)

            except Exception as e:
                logging.warning(f"Could not process metadata for {file_path}: {e}")
                continue

        logging.info(f"Collected {len(processed_files)} .lagda.md files from snapshot")
        return Result.ok(processed_files)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to collect .lagda.md files: {e}",
            context={"snapshot_dir": str(snapshot_dir)},
            cause=e
        ))


# =============================================================================
# High-Level Composition Functions
# =============================================================================

def create_agda_snapshots(config: BuildConfig) -> Result[Dict[str, List[Path]], PipelineError]:
    """
    Mathematical composition: Create both source and library snapshots.

    This is a pure function that composes two snapshot operations:
    create_snapshots = create_source_snapshot ∘ create_lib_snapshot
    """
    logging.info("🔄 Creating Agda source snapshots...")

    # Source snapshot: src → snapshot/src
    source_result = create_source_snapshot(
        config.source_paths.src_dir,
        config.build_paths.agda_snapshot_src_dir
    )

    if source_result.is_err:
        return Result.err(source_result.unwrap_err())

    # Library snapshot: src-lib-exts → snapshot/src-lib-exts
    lib_result = create_lib_snapshot(
        config.source_paths.lib_exts_dir,
        config.build_paths.agda_snapshot_lib_exts_dir
    )

    if lib_result.is_err:
        return Result.err(lib_result.unwrap_err())

    source_files = source_result.unwrap()
    lib_files = lib_result.unwrap()

    return Result.ok({
        "source_files": source_files,
        "lib_files": lib_files,
        "total_files": len(source_files) + len(lib_files)
    })


def process_agda_source_files(config: BuildConfig) -> Result[List[ProcessedFile], PipelineError]:
    """
    Complete Agda source processing pipeline.

    Mathematical composition:
    process = collect ∘ cleanup ∘ convert ∘ create_lib ∘ snapshots

    This is the main entry point for Agda processing.
    """
    logging.info("🔄 Processing Agda source files...")

    # Stage 1: Create snapshots
    snapshots_result = create_agda_snapshots(config)
    if snapshots_result.is_err:
        return Result.err(snapshots_result.unwrap_err())

    snapshot_info = snapshots_result.unwrap()
    logging.info(f"✅ Snapshots created: {snapshot_info['total_files']} files")

    # Stage 2: Convert .agda files
    conversion_result = convert_agda_files_in_snapshot(
        config.build_paths.agda_snapshot_src_dir,
        config.source_paths.project_root
    )
    if conversion_result.is_err:
        return Result.err(conversion_result.unwrap_err())

    converted_files = conversion_result.unwrap()
    logging.info(f"✅ Converted {len(converted_files)} .agda files to .lagda.md")

    # Stage 3: Cleanup converted files
    cleanup_result = cleanup_converted_agda_files(config.build_paths.agda_snapshot_src_dir)
    if cleanup_result.is_err:
        return Result.err(cleanup_result.unwrap_err())

    cleaned_count = cleanup_result.unwrap()
    logging.info(f"✅ Cleaned up {cleaned_count} original .agda files")

    # Stage 4: Create .agda-lib file
    lib_file_result = create_agda_lib_file(
        config.build_paths.build_md_in_dir / "formal-ledger.agda-lib",
        config.agda_config.dependencies,
        config.build_paths.agda_snapshot_src_dir,
        config.build_paths.agda_snapshot_lib_exts_dir,
        config.source_paths.project_root / "formal-ledger.agda-lib"
    )
    if lib_file_result.is_err:
        return Result.err(lib_file_result.unwrap_err())

    lib_file_path = lib_file_result.unwrap()
    logging.info(f"✅ Created .agda-lib file: {lib_file_path.name}")

    # Stage 5: Collect processed files
    collection_result = collect_lagda_md_files(config.build_paths.agda_snapshot_src_dir)
    if collection_result.is_err:
        return Result.err(collection_result.unwrap_err())

    processed_files = collection_result.unwrap()
    logging.info(f"✅ Collected {len(processed_files)} processed .lagda.md files")

    return Result.ok(processed_files)


# =============================================================================
# Integration with Pipeline State
# =============================================================================

def agda_processing_stage(state: PipelineState, config: BuildConfig) -> Result[PipelineState, PipelineError]:
    """
    Functional pipeline stage for Agda processing.

    Mathematical transformation: PipelineState → PipelineState
    This function fits into the larger pipeline composition.
    """
    logging.info("🔄 Entering Agda processing stage...")

    # Process Agda files
    processing_result = process_agda_source_files(config)
    if processing_result.is_err:
        return Result.err(processing_result.unwrap_err())

    processed_files = processing_result.unwrap()

    # Update pipeline state
    new_state = state.advance_to_stage(ProcessingStage.SNAPSHOT)

    # Add all processed files to state
    for processed_file in processed_files:
        new_state = new_state.add_file(processed_file)

    # Add artifacts
    new_state = new_state.add_artifact(
        "agda_lib_file",
        config.build_paths.build_md_in_dir / "formal-ledger.agda-lib"
    )
    new_state = new_state.add_artifact(
        "snapshot_src_dir",
        config.build_paths.agda_snapshot_src_dir
    )

    logging.info(f"✅ Agda processing stage completed: {len(processed_files)} files processed")

    return Result.ok(new_state)


# =============================================================================
# Testing and Examples
# =============================================================================

if __name__ == "__main__":
    # Example usage for testing
    from config.build_config import load_build_config

    print("🧪 Testing Agda processing module...")

    config = load_build_config(mode="development")

    # Test file discovery
    discovery_result = discover_agda_source_files(config.source_paths.src_dir)
    if discovery_result.is_ok:
        file_categories = discovery_result.unwrap()
        print(f"✅ File discovery successful:")
        for category, files in file_categories.items():
            print(f"   {category}: {len(files)} files")
    else:
        print(f"❌ File discovery failed: {discovery_result.unwrap_err()}")

    print("✅ Agda processing module tests completed!")
