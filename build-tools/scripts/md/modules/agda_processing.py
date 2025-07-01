#!/usr/bin/env python3

"""
Agda source processing stage for the documentation pipeline.

This module provides pure functional transformations for Agda source files:
- Creating immutable snapshots of source directories
- Converting non-literate .agda files to literate .lagda.md format
- Generating .agda-lib configuration files
- Collecting and cataloging processed files
"""

from __future__ import annotations
from pathlib import Path
import shutil
import logging
import sys
from typing import List, Dict, Set, Optional, Tuple

current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from utils.pipeline_types import (
    Result, PipelineError, ErrorType,
    ProcessedFile, FileMetadata, ProcessingStage,
    PipelineState
)

# =============================================================================
# Helper function (previously in agda2lagda.py)
# =============================================================================

def _convert_agda_to_lagda_md_in_dir(
    root_dir: Path,
    project_root_for_logging: Path
) -> Result[List[Path], PipelineError]:
    """
    Traverse directory, convert .agda to .lagda.md, and remove originals.
    Returns a list of the paths to the newly created .lagda.md files.
    """
    if not root_dir.is_dir():
        return Result.err(PipelineError(
            error_type=ErrorType.FILE_NOT_FOUND,
            message=f"Conversion Error: Path '{root_dir.resolve()}' is not a valid directory."
        ))

    logging.info(f"Starting .agda to .lagda.md conversion in directory: {root_dir.resolve()}")
    newly_created_files = []

    try:
        agda_files = list(root_dir.rglob('*.agda'))
        if not agda_files:
            logging.info("No .agda files found for conversion.")
            return Result.ok([])

        for agda_file_path in agda_files:
            new_file_name = agda_file_path.stem + ".lagda.md"
            literate_file_path = agda_file_path.with_name(new_file_name)

            with open(agda_file_path, 'r', encoding='utf-8') as f_original:
                original_content = f_original.read()

            new_content = "```agda\n" + original_content
            if original_content and not original_content.endswith('\n'):
                new_content += "\n"
            new_content += "```\n"

            literate_file_path.write_text(new_content, encoding='utf-8')
            newly_created_files.append(literate_file_path)
            agda_file_path.unlink() # Delete the original .agda file

        logging.info(f"Successfully converted {len(newly_created_files)} .agda files.")
        return Result.ok(sorted(newly_created_files))

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"An unexpected error occurred during .agda conversion: {e}",
            context={"directory": str(root_dir)},
            cause=e
        ))

# =============================================================================
# Pure File Discovery Functions
# =============================================================================

def discover_agda_source_files(src_dir: Path) -> Result[Dict[str, List[Path]], PipelineError]:
    """
    Pure function: Discover and categorize Agda source files.
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
        return FileMetadata(
            relative_path=Path(file_path.name), stage=stage,
            processing_time=0.0, file_size=file_size, checksum=""
        )
    except Exception:
        return FileMetadata(
            relative_path=Path(file_path.name), stage=stage,
            processing_time=0.0, file_size=0, checksum=""
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
    """
    try:
        if not source_dir.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.FILE_NOT_FOUND,
                message=f"Source directory not found: {source_dir}",
                context={"source": str(source_dir), "target": str(target_dir)}
            ))
        if target_dir.exists():
            shutil.rmtree(target_dir)
        shutil.copytree(source_dir, target_dir)
        snapshot_files = [f for f in list(target_dir.rglob('*')) if f.is_file()]
        logging.info(f"Created snapshot: {len(snapshot_files)} files copied")
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
    """
    return _convert_agda_to_lagda_md_in_dir(snapshot_dir, project_root)

# =============================================================================
# Agda Library Configuration
# =============================================================================

def generate_agda_lib_content(
    dependencies: Tuple[str, ...],
    include_paths: List[Path]
) -> str:
    """
    Pure function: Generate .agda-lib file content.
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
    dependencies: Tuple[str, ...],
    snapshot_src_dir: Path,
    snapshot_lib_dir: Path,
    existing_lib_file: Optional[Path] = None
) -> Result[Path, PipelineError]:
    """
    Pure function: Create or copy .agda-lib file for the snapshot.
    """
    try:
        if existing_lib_file and existing_lib_file.exists():
            shutil.copy2(existing_lib_file, target_path)
            logging.info(f"Copied existing .agda-lib file: {existing_lib_file.name}")
        else:
            include_paths = [".", snapshot_src_dir.resolve(), snapshot_lib_dir.resolve()]
            content = generate_agda_lib_content(dependencies, include_paths)
            target_path.parent.mkdir(parents=True, exist_ok=True)
            target_path.write_text(content, encoding='utf-8')
            logging.info(f"Generated new .agda-lib file: {target_path.name}")
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
    """
    try:
        lagda_md_files = sorted(list(snapshot_dir.rglob('*.lagda.md')))
        processed_files = []
        for file_path in lagda_md_files:
            try:
                metadata = calculate_file_metadata(file_path, ProcessingStage.SNAPSHOT)
                processed_file = ProcessedFile(
                    source_path=file_path,
                    current_path=file_path,
                    metadata=metadata,
                    content_hash=""
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
    """
    logging.info("🔄 Creating Agda source snapshots...")
    source_result = create_source_snapshot(
        config.source_paths.src_dir,
        config.build_paths.agda_snapshot_src_dir
    )
    if source_result.is_err:
        return Result.err(source_result.unwrap_err())

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
    """
    logging.info("🔄 Processing Agda source files...")
    snapshots_result = create_agda_snapshots(config)
    if snapshots_result.is_err:
        return Result.err(snapshots_result.unwrap_err())

    conversion_result = convert_agda_files_in_snapshot(
        config.build_paths.agda_snapshot_src_dir,
        config.source_paths.project_root
    )
    if conversion_result.is_err:
        return Result.err(conversion_result.unwrap_err())
    logging.info(f"✅ Converted {len(conversion_result.unwrap())} .agda files to .lagda.md")

    lib_file_result = create_agda_lib_file(
        config.build_paths.build_md_in_dir / "formal-ledger.agda-lib",
        config.agda_config.dependencies,
        config.build_paths.agda_snapshot_src_dir,
        config.build_paths.agda_snapshot_lib_exts_dir,
        config.source_paths.project_root / "formal-ledger.agda-lib"
    )
    if lib_file_result.is_err:
        return Result.err(lib_file_result.unwrap_err())
    logging.info(f"✅ Created .agda-lib file: {lib_file_result.unwrap().name}")

    collection_result = collect_lagda_md_files(config.build_paths.agda_snapshot_src_dir)
    if collection_result.is_err:
        return Result.err(collection_result.unwrap_err())

    processed_files = collection_result.unwrap()
    logging.info(f"✅ Collected {len(processed_files)} processed .lagda.md files")

    return Result.ok(processed_files)
