# utils/file_ops.py
"""
Provides pure, functional wrappers for file system operations.
"""
from __future__ import annotations
import json
import shutil
from pathlib import Path
from typing import List, Dict

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in __import__('sys').path:
    __import__('sys').path.insert(0, str(current_dir))

from utils.pipeline_types import Result, PipelineError, ErrorType, FileMetadata

def ensure_dir_exists(path: Path) -> Result[Path, PipelineError]:
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

def clean_dir(path: Path) -> Result[Path, PipelineError]:
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

def rm_file(path: Path) -> Result[None, PipelineError]:
    """Removes a single file if it exists."""
    try:
        if path.exists() and path.is_file():
            path.unlink()
        return Result.ok(None)
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to remove file: {path}",
            cause=e
        ))

def rm_dir(path: Path) -> Result[None, PipelineError]:
    """Removes a directory if it exists."""
    try:
        if path.exists():
            shutil.rmtree(path)
        return Result.ok(None)
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to remove directory: {path}", cause=e))

def rm_artifact(path: Path) -> Result[Path, PipelineError]:
    """Removes a file or directory path if it exists."""
    try:
        if path.is_dir():
            shutil.rmtree(path)
        elif path.is_file():
            path.unlink()
        return Result.ok(path)
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to remove artifact: {path}",
            cause=e
        ))

def cp_file(source: Path, target: Path) -> Result[Path, PipelineError]:
    """Copies a single file."""
    try:
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        return Result.ok(target)
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to copy file: {source} -> {target}", cause=e))

def cp_dir(source: Path, target: Path) -> Result[Path, PipelineError]:
    """Copies an entire directory tree."""
    try:
        if not source.is_dir():
            return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"Source directory not found: {source}"))
        shutil.copytree(source, target, dirs_exist_ok=True)
        return Result.ok(target)
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to copy directory: {source} -> {target}", cause=e))

def ls_dir(path: Path, pattern: str = '*') -> Result[List[Path], PipelineError]:
    """
    Lists all files in a directory matching a glob pattern, returning a Result.
    Args:
        path: The directory to list.
        pattern: A glob pattern (e.g., '*.agda', '**/*.md').
    """
    try:
        if not path.is_dir():
            return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"Directory not found: {path}"))

        files = sorted([item for item in path.glob(pattern) if item.is_file()])
        return Result.ok(files)

    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to list directory: {path}", cause=e))

def ls_dir_special(path: Path, recursive: bool = False) -> Result[List[Path], PipelineError]:
    """Lists all files in a directory, returning a Result."""
    try:
        if not path.is_dir():
            return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"Directory not found: {path}"))
        pattern = '**/*' if recursive else '*'
        files = [item for item in path.glob(pattern) if item.is_file()]
        return Result.ok(files)
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to list directory: {path}", cause=e))

def read_text(path: Path) -> Result[str, PipelineError]:
    """Reads a text file, returning a Result."""
    try:
        return Result.ok(path.read_text('utf-8'))
    except FileNotFoundError:
        return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"File not found: {path}"))
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to read file: {path}", cause=e))

def write_text(path: Path, content: str) -> Result[None, PipelineError]:
    """Writes text to a file, returning a Result."""
    try:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content, 'utf-8')
        return Result.ok(None)
    except Exception as e:
        return Result.err(PipelineError(ErrorType.COMMAND_FAILED, f"Failed to write file: {path}", cause=e))

def load_json(path: Path) -> Result[Dict, PipelineError]:
    """Loads a JSON file, handling potential parsing errors."""
    def parse(content: str) -> Result[Dict, PipelineError]:
        try:
            return Result.ok(json.loads(content))
        except json.JSONDecodeError as e:
            return Result.err(PipelineError(ErrorType.PARSING_ERROR, f"Failed to parse JSON: {path}", cause=e))

    return read_text(path).and_then(parse)

def write_json(path: Path, data: Dict) -> Result[None, PipelineError]:
    """Serializes a dictionary to a JSON file."""
    try:
        content = json.dumps(data, indent=2)
        return write_text(path, content)
    except TypeError as e:
        return Result.err(PipelineError(ErrorType.PARSING_ERROR, f"Failed to serialize JSON for: {path}", cause=e))

# =============================================================================
# Utility Functions
# =============================================================================

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
