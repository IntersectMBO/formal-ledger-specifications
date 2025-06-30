# utils/command_runner.py
"""
Utility for running external shell commands functionally.
"""
import logging
import subprocess
from pathlib import Path
from typing import List, Optional

from .pipeline_types import Result, PipelineError, ErrorType

def run_command(
    command_args: List[str],
    cwd: Optional[Path] = None,
    capture_output: bool = False
) -> Result[subprocess.CompletedProcess, PipelineError]:
    """
    Runs a shell command and returns a Result object.
    Does not capture stdout by default to avoid hanging on long-running processes.

    Args:
        command_args: The command and its arguments as a list of strings.
        cwd: The working directory to run the command in.
        capture_output: whether to capture stdout.
    Returns:
        Result[subprocess.CompletedProcess, PipelineError]: Ok with the process result on success,
                                                             or an Err with a PipelineError on failure.
    """
    command_str = " ".join(map(str, command_args))
    logging.info(f"Running: {command_str}")

    try:
        # Conditionally set stdout based on the capture_output flag
        stdout_pipe = subprocess.PIPE if capture_output else subprocess.DEVNULL

        process = subprocess.run(
            command_args,
            cwd=cwd,
            stdout=stdout_pipe,
            stderr=subprocess.PIPE, # Always capture stderr for error logging
            text=True,
            check=False,
            encoding='utf-8'
        )

        if process.stderr:
            logging.debug(f"Stderr for '{command_str}':\n{process.stderr}")

        if process.returncode != 0:
            return Result.err(PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message=f"Command failed with exit code {process.returncode}",
                context={"command": command_str, "stderr": process.stderr}
            ))

        return Result.ok(process)

    except FileNotFoundError:
        return Result.err(PipelineError(
            ErrorType.COMMAND_FAILED, f"Command not found: {command_args[0]}"
        ))
    except Exception as e:
        return Result.err(PipelineError(
            ErrorType.COMMAND_FAILED, f"Failed to run command '{command_str}'", cause=e
        ))
