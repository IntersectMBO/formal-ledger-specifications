# utils/file_ops.py
"""
Provides pure, functional wrappers for file system operations.
"""
from __future__ import annotations
import shutil
from pathlib import Path

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in __import__('sys').path:
    __import__('sys').path.insert(0, str(current_dir))

from utils.pipeline_types import Result, PipelineError, ErrorType

def ensure_directory_exists(path: Path) -> Result[Path, PipelineError]:
    """Pure function: Creates a directory if it doesn't exist."""
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
    """Pure function: Removes and recreates a directory."""
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
    """Pure function: Copies an entire directory tree."""
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
