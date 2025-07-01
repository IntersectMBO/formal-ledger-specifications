#!/usr/bin/env python3

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
from utils.pipeline_types import Result, PipelineError, ErrorType


# =============================================================================
# Pure Directory Operations
# =============================================================================

def ensure_directory_exists(path: Path) -> Result[Path, PipelineError]:
    """Pure function: Create directory if it doesn't exist."""
    try:
        path.mkdir(parents=True, exist_ok=True)
        return Result.ok(path)
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PERMISSION_DENIED,
            message=f"Failed to create directory: {path}",
            cause=e
        ))


def clean_directory(path: Path) -> Result[Path, PipelineError]:
    """Pure function: Remove and recreate directory."""
    try:
        if path.exists():
            shutil.rmtree(path)
        path.mkdir(parents=True, exist_ok=True)
        return Result.ok(path)
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PERMISSION_DENIED,
            message=f"Failed to clean directory: {path}",
            cause=e
        ))


def copy_directory_tree(source: Path, target: Path) -> Result[Path, PipelineError]:
    """Pure function: Copy entire directory tree."""
    try:
        if not source.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.FILE_NOT_FOUND,
                message=f"Source directory not found: {source}"
            ))

        shutil.copytree(source, target, dirs_exist_ok=True)
        return Result.ok(target)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to copy directory tree: {source} -> {target}",
            cause=e
        ))


# =============================================================================
# Build Environment Setup
# =============================================================================

def setup_build_directories(config: BuildConfig) -> Result[List[Path], PipelineError]:
    """
    Functional directory setup: Create all necessary build directories.

    Returns list of successfully created directories.
    """

    try:
        logging.info("Creating build directories...")

        directories_to_create = [
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
            config.build_paths.mkdocs_src_dir,
            config.build_paths.mkdocs_docs_dir,
            config.build_paths.mkdocs_css_dir,
            config.build_paths.mkdocs_js_dir,
            config.build_paths.mkdocs_includes_dir,
        ]

        # Clean directories that should start fresh
        directories_to_clean = [
            config.build_paths.mkdocs_build_dir,
            config.build_paths.mdbook_build_dir,
        ]

        created_dirs = []

        # Clean directories first
        for dir_path in directories_to_clean:
            result = clean_directory(dir_path)
            if result.is_err:
                logging.error(f"Failed to clean directory {dir_path}: {result.unwrap_err()}")
                return Result.err(result.unwrap_err())  # Return the error with correct type
            created_dirs.append(result.unwrap())

        # Create directories
        for dir_path in directories_to_create:
            result = ensure_directory_exists(dir_path)
            if result.is_err:
                logging.error(f"Failed to create directory {dir_path}: {result.unwrap_err()}")
                return Result.err(result.unwrap_err())  # Return the error with correct type
            created_dirs.append(result.unwrap())

        logging.info(f"Successfully created {len(created_dirs)} directories")
        return Result.ok(created_dirs)

    except Exception as e:
        error = PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to setup build directories: {e}",
            cause=e
        )
        logging.error(f"Exception in setup_build_directories: {error}")
        return Result.err(error)


def setup_static_site_structure(config: BuildConfig) -> Result[Dict[str, Path], PipelineError]:
    """
    Functional static structure setup: Copy static templates to build directories.

    Returns mapping of copied structures.
    """

    copy_operations = [
        # mkdocs static structure
        (config.source_paths.mkdocs_static_src_dir, config.build_paths.mkdocs_src_dir),

        # mdbook static structure
        (config.source_paths.mdbook_static_dir, config.build_paths.mdbook_build_dir),
    ]

    copied_structures = {}

    for source, target in copy_operations:
        if source.exists():
            result = copy_directory_tree(source, target)
            if result.is_err:
                return Result.err(result.unwrap_err())
            copied_structures[source.name] = result.unwrap()
        else:
            # Log warning but don't fail (some static structures might not exist)
            logging.warning(f"Static structure not found: {source}")

    return Result.ok(copied_structures)


def copy_common_source_files(config: BuildConfig) -> Result[int, PipelineError]:
    """
    Copy shared files from common source directory to both documentation systems.

    Returns count of files copied.
    """

    common_src_dir = config.source_paths.md_static_common_src_dir
    mkdocs_docs_dir = config.build_paths.mkdocs_docs_dir
    mdbook_docs_dir = config.build_paths.mdbook_docs_dir

    if not common_src_dir.exists():
        logging.info(f"No common source directory found at {common_src_dir}")
        return Result.ok(0)

    try:
        file_count = 0

        # Copy to both mkdocs and mdbook
        for target_dir in [mkdocs_docs_dir, mdbook_docs_dir]:
            if target_dir.parent.exists():
                for item in common_src_dir.iterdir():
                    if item.is_file():
                        target_file = target_dir / item.name
                        shutil.copy2(item, target_file)
                        file_count += 1
                    elif item.is_dir():
                        target_subdir = target_dir / item.name
                        if target_subdir.exists():
                            shutil.rmtree(target_subdir)
                        shutil.copytree(item, target_subdir)
                        # Count files in subdirectory
                        file_count += len(list(item.rglob('*')))

        return Result.ok(file_count)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to copy common source files",
            cause=e
        ))


# =============================================================================
# Logging Configuration
# =============================================================================

def setup_logging(config: BuildConfig) -> Result[bool, PipelineError]:
    """
    Functional logging setup: Configure file and console logging.

    Uses configuration to determine log levels and output paths.
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
    """
    Functional cleanup: Remove intermediate build artifacts.

    Returns list of cleaned directories/files.
    """

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

    cleaned = []

    for artifact in artifacts_to_clean:
        try:
            if artifact.exists():
                if artifact.is_dir():
                    shutil.rmtree(artifact)
                else:
                    artifact.unlink()
                cleaned.append(artifact)
                logging.debug(f"  Cleaned: {artifact.relative_to(config.source_paths.project_root)}")
        except Exception as e:
            logging.warning(f"  Failed to clean {artifact}: {e}")

    logging.info(f"✅ Cleaned {len(cleaned)} intermediate artifacts")
    return Result.ok(cleaned)


# =============================================================================
# High-Level Setup Function
# =============================================================================

def setup_build_environment(config: BuildConfig) -> Result[Dict[str, Any], PipelineError]:
    """
    Complete build environment setup using functional composition.

    This is the main entry point that orchestrates all setup operations.
    """

    logging.info("🏗️ Setting up build environment...")

    try:
        # Chain all setup operations functionally
        # STAGE 1: Setup directories
        setup_dirs_result = setup_build_directories(config)
        if setup_dirs_result.is_err:
            return setup_dirs_result  # Return the error directly

        directories = setup_dirs_result.unwrap()
        logging.info(f"✅ Created {len(directories)} directories")

        # STAGE 2: Setup static structures
        structures_result = setup_static_site_structure(config)
        if structures_result.is_err:
            return Result.err(structures_result.unwrap_err())

        structures = structures_result.unwrap()
        logging.info(f"✅ Setup static structures: {list(structures.keys())}")

        # STAGE 3: Copy common files
        common_files_result = copy_common_source_files(config)
        if common_files_result.is_err:
            return Result.err(common_files_result.unwrap_err())

        common_files_copied = common_files_result.unwrap()
        logging.info(f"✅ Copied {common_files_copied} common files")

        # STAGE 4: Setup logging (this might be redundant but ensure it's working)
        logging_result = setup_logging(config)
        if logging_result.is_err:
            return Result.err(logging_result.unwrap_err())

        # SUCCESS: Return combined results
        result = {
            "directories": directories,
            "structures": structures,
            "common_files_copied": common_files_copied,
            "logging_configured": True
        }

        logging.info("✅ Build environment setup completed successfully")
        return Result.ok(result)

    except Exception as e:
        # Catch any unexpected exceptions and wrap them properly
        error = PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Unexpected error during build environment setup: {e}",
            cause=e
        )
        logging.error(f"❌ Setup failed with exception: {error}")
        return Result.err(error)


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
