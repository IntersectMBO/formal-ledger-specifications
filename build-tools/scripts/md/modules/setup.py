# build-tools/scripts/md/modules/setup.py
"""
Functional setup module for the documentation pipeline.

Handles directory creation, logging configuration, environment preparation, and cleanup.
"""
from __future__ import annotations
from pathlib import Path
import logging
import shutil
import sys
from typing import List, Dict, Any

# Add current directory to Python path for imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from utils.pipeline_types import Result, PipelineError, ErrorType, sequence_results
from utils.file_ops import ensure_dir_exists, clean_dir, cp_dir


# =============================================================================
# Build Environment Setup
# =============================================================================

def setup_build_directories(config: BuildConfig) -> Result[List[Path], PipelineError]:
    """
    Functional directory setup: Create all necessary build directories.
    Returns list of successfully created directories.
    """
    logging.info("Creating build directories...")
    dirs_to_create = [
        # Core build directories
        config.build_paths.build_dir,
        config.build_paths.build_md_dir,
        config.build_paths.build_md_in_dir,
        config.build_paths.build_md_pp_dir,
        config.build_paths.build_md_aux_dir,
        # Snapshot directories
        config.build_paths.agda_snapshot_src_dir,
        config.build_paths.agda_snapshot_lib_exts_dir,
        # Pipeline intermediate directories
        config.build_paths.temp_dir,
        config.build_paths.code_blocks_dir,
        config.build_paths.intermediate_md_dir,
        # Site directories (will be cleaned and recreated)
        config.build_paths.mkdocs_docs_dir,
        config.build_paths.mkdocs_css_dir,
        config.build_paths.mkdocs_js_dir,
        config.build_paths.mkdocs_includes_dir
    ]
    # Clean directories that should start fresh
    dirs_to_clean = [
        config.build_paths.mkdocs_dir,
    ]

    # This functional chain first cleans a list of directories, and_then creates another list.
    # If any single operation fails, the entire chain stops and returns the Err.
    return (
        sequence_results([clean_dir(p) for p in dirs_to_clean])
        .and_then(lambda cleaned:
            sequence_results([ensure_dir_exists(p) for p in dirs_to_create])
            .map(lambda created: cleaned + created)
        )
    )


def setup_static_site_structure(config: BuildConfig) -> Result[Dict[str, Path], PipelineError]:
    """
    Static structure setup: Copy static site templates to build directories.
    """
    copy_operations = [
        (config.source_paths.mkdocs_dir, config.build_paths.mkdocs_dir),
    ]

    # Create a list of Result objects by applying cp_dir to each operation
    results = [cp_dir(src, dest) for src, dest in copy_operations if src.exists()]

    # Convert the list of Results into a single Result
    return sequence_results(results).map(lambda paths: {
        # Create the original dictionary output on success
        op[0].name: path for op, path in zip(copy_operations, paths)
    })

def copy_common_source_files(config: BuildConfig) -> Result[None, PipelineError]:
    """Copies shared files from the common source to all target site directories."""
    common_src_dir = config.source_paths.mkdocs_docs_dir
    if not common_src_dir.exists():
        logging.info("No common source directory found. Skipping copy.")
        return Result.ok(None)

    target_dirs = [
        config.build_paths.mkdocs_docs_dir,
    ]

    # Create and sequence the results of copying the common directory to each target
    results = [cp_dir(common_src_dir, target) for target in target_dirs]

    # Return a single Result. We map to None because the calling function doesn't need the paths.
    return sequence_results(results).map(lambda _: None)


# =============================================================================
# Logging Configuration
# =============================================================================

def setup_logging(config: BuildConfig) -> Result[bool, PipelineError]:
    """
    Logging setup: Configure file and console logging.
    Uses configuration to determine log levels and output paths.
    Do not refactor; leave as is.
    """

    try:
        # Clear any existing handlers
        logger = logging.getLogger()
        if logger.hasHandlers():
            logger.handlers.clear()

        # Set base level
        logger.setLevel(logging.DEBUG)

        # Create formatter
        formatter = logging.Formatter(
            '%(asctime)s - %(levelname)-8s - %(message)s',
            datefmt='%Y-%m-%d %H:%M:%S'
        )

        # File handler (always DEBUG level)
        config.build_paths.log_file_path.parent.mkdir(parents=True, exist_ok=True)
        file_handler = logging.FileHandler(config.build_paths.log_file_path, mode='w', encoding='utf-8')
        file_handler.setFormatter(formatter)
        file_handler.setLevel(logging.DEBUG)
        logger.addHandler(file_handler)

        # Console handler (level depends on config)
        console_handler = logging.StreamHandler(sys.stderr)
        console_handler.setFormatter(formatter)
        console_level = logging.DEBUG if config.verbose_logging else logging.INFO
        console_handler.setLevel(console_level)
        logger.addHandler(console_handler)

        logging.info("✅ Logging configuration complete")
        logging.info(f"   Log file: {config.build_paths.log_file_path}")
        logging.info(f"   Verbose mode: {config.verbose_logging}")

        return Result.ok(True)  # Return True instead of None

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to setup logging: {e}",
            cause=e
        ))

# =============================================================================
# Cleanup Operations
# =============================================================================

def cleanup_intermediate_artifacts(config: BuildConfig) -> Result[List[Path], PipelineError]:
    """Removes intermediate build artifacts using a functional style."""
    if not config.cleanup_intermediates:
        logging.info("Skipping cleanup (cleanup_intermediates=False)")
        return Result.ok([])

    artifacts_to_clean = [
        config.build_paths.temp_dir,
        config.build_paths.code_blocks_dir,
        config.build_paths.intermediate_md_dir,
        config.build_paths.build_md_pp_dir,
        config.build_paths.macros_json_path,
    ]

    # Apply the rm_artifact function to all paths and collect the results
    results = [rm_artifact(p) for p in artifacts_to_clean if p.exists()]

    # Separate successful results from errors
    successes, failures = collect_errors(results)

    # Log any errors as warnings, but don't halt the pipeline
    for error in failures:
        logging.warning(f"Failed to clean an artifact: {error.message}")

    logging.info(f"✅ Cleaned {len(successes)} intermediate artifacts.")
    return Result.ok(successes)


# =============================================================================
# High-Level Setup Function
# =============================================================================

def setup_build_environment(config: BuildConfig) -> Result[Dict[str, Any], PipelineError]:
    """
    Complete build environment setup using functional composition.

    This is the main entry point that orchestrates all setup operations.
    """

    logging.info("🏗️ Setting up build environment...")

    return (
        # Chain subsequent operations, ignoring the successful result of the previous step
        setup_build_directories(config)                            # STAGE 1: Setup directories
        .and_then(lambda _: setup_static_site_structure(config))   # STAGE 2: Setup static structures
        .and_then(lambda _: copy_common_source_files(config))      # STAGE 3: Copy common files
        .and_then(lambda _: setup_logging(config))                 # STAGE 4: Setup logging (maybe redundant but ensure it's working)
        # If all succeed, map the final result to the dictionary for the main build script
        .map(lambda _: { "setup_complete": True })
    )


# =============================================================================
# Testing and Examples
# =============================================================================

if __name__ == "__main__":
    # Example usage
    from config.build_config import load_build_config

    print("🧪 Testing setup module...")

    config = load_build_config(mode="development")

    result = setup_build_environment(config)

    if result.is_ok:
        setup_info = result.unwrap()
        print("✅ Setup completed successfully!")
        print(f"   Directories created: {len(setup_info['directories'])}")
        print(f"   Static structures: {list(setup_info['structures'].keys())}")
        print(f"   Common files copied: {setup_info['common_files_copied']}")
    else:
        error = result.unwrap_err()
        print(f"❌ Setup failed: {error}")
