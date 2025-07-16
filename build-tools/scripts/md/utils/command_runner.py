# utils/command_runner.py
"""
Functional command execution utilities for the build pipeline.
"""
from __future__ import annotations
import subprocess
import logging
from pathlib import Path
from typing import List, Optional

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in __import__('sys').path:
    __import__('sys').path.insert(0, str(current_dir))

from utils.pipeline_types import Result, PipelineError, ErrorType

def run_command(
    command: List[str],
    cwd: Optional[Path] = None,
    capture_output: bool = False,
    text: bool = False,
    stdout_file: Optional[Path] = None,
    stream_output: bool = False  # --- NEW: Parameter to enable live streaming
) -> Result[subprocess.CompletedProcess, PipelineError]:
    """
    Runs a shell command and returns a Result object.
    Can either capture output or stream it live to the logger.
    """
    command_str = ' '.join(map(str, command))
    logging.debug(f"Running: {command_str}")

    try:
        # --- NEW: Logic to handle live streaming output ---
        if stream_output:
            # Use Popen for live output streaming
            process = subprocess.Popen(
                [str(arg) for arg in command],
                cwd=cwd,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                encoding='utf-8'
            )

            # Log stdout and stderr line-by-line
            if process.stdout:
                for line in iter(process.stdout.readline, ''):
                    logging.info(f"  > {line.strip()}")
            if process.stderr:
                 for line in iter(process.stderr.readline, ''):
                    logging.warning(f"  ! {line.strip()}")

            # Wait for the process to complete and get the return code
            process.wait()
            if process.returncode != 0:
                 return Result.err(PipelineError(
                    error_type=ErrorType.COMMAND_FAILED,
                    message=f"Streamed command failed with exit code {process.returncode}",
                    context={"command": command_str, "return_code": process.returncode}
                ))
            # Return a CompletedProcess-like object on success
            return Result.ok(subprocess.CompletedProcess(
                args=command, returncode=0, stdout="", stderr=""
            ))

        # --- Original logic for capturing output ---
        else:
            stdout_target = subprocess.PIPE if capture_output or not stdout_file else None
            if stdout_file:
                stdout_file.parent.mkdir(parents=True, exist_ok=True)
                stdout_target = open(stdout_file, "w", encoding="utf-8")

            process = subprocess.run(
                [str(arg) for arg in command],
                cwd=cwd, stdout=stdout_target, stderr=subprocess.PIPE,
                text=text, check=False, encoding='utf-8' if text else None
            )

            if process.stderr:
                logging.debug(f"Stderr for '{command_str}':\n{process.stderr}")
            if process.returncode != 0:
                return Result.err(PipelineError(
                    error_type=ErrorType.COMMAND_FAILED,
                    message=f"Command failed with exit code {process.returncode}",
                    context={
                        "command": command_str,
                        "return_code": process.returncode,
                        "stderr": process.stderr.strip() if process.stderr else "N/A",
                        "cwd": str(cwd) if cwd else "N/A"
                    }
                ))
            return Result.ok(process)

    except FileNotFoundError as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Command not found: {command[0]}",
            cause=e
        ))
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"An unexpected error occurred running command: {e}",
            cause=e
        ))
    finally:
        if not stream_output and stdout_file and 'stdout_target' in locals() and stdout_target:
            if not isinstance(stdout_target, int): # Not a PIPE
                 stdout_target.close()
