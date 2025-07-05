# build-tools/scripts/md/modules/agda_processing.py
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
from utils.file_ops import (
    rm_dir, cp_dir, ls_dir, write_text,
    cp_file, rm_file, read_text
)
from utils.pipeline_types import (
    Result, PipelineError, ErrorType,
    ProcessedFile, FileMetadata, ProcessingStage,
    PipelineState, sequence_results
)


# =============================================================================
# Helper function (previously in agda2lagda.py)
# =============================================================================

def _wrap_content_in_agda_fence(content: str) -> str:
    """A pure helper function to wrap string content in an Agda code fence."""
    new_content = "```agda\n" + content
    if content and not content.endswith('\n'):
        new_content += "\n"
    new_content += "```\n"
    return new_content

def _convert_single_agda_file(agda_path: Path) -> Result[Path, PipelineError]:
    """
    Converts a single .agda file to .lagda.md using a functional chain.
    Returns the path of the newly created literate file.
    """
    literate_path = agda_path.with_suffix(".lagda.md")
    return (
        read_text(agda_path)
        .map(_wrap_content_in_agda_fence)
        .and_then(lambda new_content: write_text(literate_path, new_content))
        .and_then(lambda _: rm_file(agda_path))
        # On success, return the path of the new file
        .map(lambda _: literate_path)
    )

def _convert_agda_to_lagda_md_in_dir(
    root_dir: Path,
    project_root_for_logging: Path
) -> Result[List[Path], PipelineError]:
    """
    Traverses a directory, converts all .agda files, and collects the results.
    Returns a list of the paths to the newly created .lagda.md files.
    """
    if not root_dir.is_dir():
        return Result.err(PipelineError(
            error_type=ErrorType.FILE_NOT_FOUND,
            message=f"Conversion source directory not found: {root_dir}"
        ))

    logging.info(f"Starting .agda to .lagda.md conversion in: {root_dir}")
    agda_files = list(root_dir.rglob('*.agda'))
    if not agda_files:
        logging.info("No .agda files found for conversion.")
        return Result.ok([])

    # Process each file and collect the Result objects
    conversion_results = [_convert_single_agda_file(p) for p in agda_files]

    # Use sequence_results to consolidate the list of Results into a single Result
    final_result = sequence_results(conversion_results)

    if final_result.is_ok:
        logging.info(f"Successfully converted {len(final_result.unwrap())} .agda files.")

    return final_result


# =============================================================================
# Pure File Discovery Functions
# =============================================================================

def discover_agda_source_files(src_dir: Path) -> Result[Dict[str, List[Path]], PipelineError]:
    """Discovers and categorizes Agda source files by composing file operations."""
    return (
        ls_dir(src_dir, pattern='**/*.agda').and_then(lambda agda:
            ls_dir(src_dir, pattern='**/*.lagda').and_then(lambda lagda:
                ls_dir(src_dir, pattern='**/*.lagda.md').map(lambda lagda_md:
                    {
                        'agda': agda,
                        'lagda': lagda,
                        'lagda_md': lagda_md
                    }
                )
            )
        )
    )

def calculate_file_metadata(file_path: Path, stage: ProcessingStage) -> FileMetadata:
    """
    Calculates metadata for a processed file. This is a special case where a
    try-except is pragmatic because a failure to get a file's size is not
    a pipeline-halting error; we can simply default to 0.
    """
    try:
        file_size = file_path.stat().st_size
    except FileNotFoundError:
        file_size = 0
    return FileMetadata(
        relative_path=Path(file_path.name), stage=stage,
        processing_time=0.0, file_size=file_size, checksum=""
    )

def collect_lagda_md_files(snapshot_dir: Path) -> Result[List[ProcessedFile], PipelineError]:
    """Collects all .lagda.md files from the snapshot by composing helpers."""

    def create_processed_files(paths: List[Path]) -> List[ProcessedFile]:
        return [
            ProcessedFile(
                source_path=p,
                current_path=p,
                metadata=calculate_file_metadata(p, ProcessingStage.SNAPSHOT)
            ) for p in paths
        ]

    # Call our file op utility and then map the successful result
    result = ls_dir(snapshot_dir, pattern='**/*.lagda.md').map(create_processed_files)

    if result.is_ok:
        logging.info(f"Collected {len(result.unwrap())} .lagda.md files from snapshot")

    return result


# =============================================================================
# Snapshot Creation Functions
# =============================================================================

def create_source_snapshot(
        source_dir: Path,
        target_dir: Path
) -> Result[List[Path], PipelineError]:
    """
    Pure function: Create an immutable snapshot of a source directory using a functional chain.
    """
    return (
        rm_dir(target_dir)     # The first operation now starts the chain directly.
        .and_then(lambda _: cp_dir(source_dir, target_dir))
        .and_then(lambda copied_path: ls_dir(copied_path, pattern='**/*'))
    )

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
    """Creates or copies the .agda-lib file for the snapshot."""

    if existing_lib_file and existing_lib_file.exists():
        # Case 1: An existing .agda-lib file is provided and exists. Copy it.
        logging.info(f"Copying existing .agda-lib file: {existing_lib_file.name}")
        return cp_file(existing_lib_file, target_path)
    else:
        # Case 2: No existing file. Generate a new one.
        logging.info(f"Generating new .agda-lib file: {target_path.name}")
        include_paths = [".", snapshot_src_dir.resolve(), snapshot_lib_dir.resolve()]
        content = generate_agda_lib_content(dependencies, include_paths)
        # Use our functional writer and map its success value to the target path
        return write_text(target_path, content).map(lambda _: target_path)


# =============================================================================
# File Collection and Metadata
# =============================================================================

def collect_lagda_md_files(snapshot_dir: Path) -> Result[List[ProcessedFile], PipelineError]:
    """Collects all .lagda.md files from the snapshot using a functional style."""

    def create_processed_files(paths: List[Path]) -> List[ProcessedFile]:
        """A pure mapping function that converts a list of paths to a list of ProcessedFile objects."""
        return [
            ProcessedFile(
                source_path=p,
                current_path=p,
                metadata=calculate_file_metadata(p, ProcessingStage.SNAPSHOT)
            ) for p in paths
        ]

    # The entire function is now a single, declarative expression.
    result = ls_dir(snapshot_dir, pattern='**/*.lagda.md').map(create_processed_files)

    # We can perform side-effects like logging after the pure computation is done.
    if result.is_ok:
        logging.info(f"Collected {len(result.unwrap())} processed .lagda.md files")

    return result

# =============================================================================
# High-Level Composition Functions
# =============================================================================

def create_agda_snapshots(config: BuildConfig) -> Result[Dict[str, Any], PipelineError]:
    """Mathematical composition: Create both source and library snapshots."""
    logging.info("🔄 Creating Agda source snapshots...")

    # Create the source snapshot
    source_result = create_source_snapshot(
        config.source_paths.src_dir,
        config.build_paths.agda_snapshot_src_dir
    )
    if source_result.is_err:
        # If it fails, we wrap the error and return immediately
        return Result.err(source_result.unwrap_err().with_context(snapshot="source"))

    # Create the library snapshot
    lib_result = create_lib_snapshot(
        config.source_paths.lib_exts_dir,
        config.build_paths.agda_snapshot_lib_exts_dir
    )
    if lib_result.is_err:
        return Result.err(lib_result.unwrap_err().with_context(snapshot="library"))

    # If both succeed, unwrap the values and return the final dictionary
    source_files = source_result.unwrap()
    lib_files = lib_result.unwrap()
    logging.info(f"✅ Snapshots created: {len(source_files)} source files, {len(lib_files)} library files.")

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
