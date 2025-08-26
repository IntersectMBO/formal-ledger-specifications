# build-tools/scripts/md/modules/static_tex_processor.py
"""
Module: static_tex_processor

Converts static LaTeX files to Markdown.
Uses Pandoc with macros and template support.
"""

from pathlib import Path
import logging
from typing import List

from config.build_config import BuildConfig
from utils.command_runner import run_command
from utils.pipeline_types import (
    Result, PipelineError, ErrorType, ProcessedFile, ProcessingStage
)
from utils.file_ops import ls_dir, calculate_file_metadata


def _convert_single_tex_to_md(tex_file: Path, output_dir: Path) -> Result[ProcessedFile, PipelineError]:
    """Converts one static .tex file to markdown using Pandoc and returns a ProcessedFile."""
    md_filename = tex_file.with_suffix(".md").name
    output_path = output_dir / md_filename

    command = [
        "pandoc", str(tex_file),
        "-f", "latex",
        "-t", "markdown",
        "-o", str(output_path)
    ]

    result = run_command(command)
    if result.is_err:
        return Result.err(result.unwrap_err().with_context(file=str(tex_file)))

    metadata = calculate_file_metadata(output_path, ProcessingStage.SNAPSHOT)
    return Result.ok(ProcessedFile(
        source_path=tex_file,
        current_path=output_path,
        metadata=metadata
    ))


def convert_all_static_tex(config: BuildConfig) -> Result[List[ProcessedFile], PipelineError]:
    """
    Converts all LaTeX files in `config.source_paths.latex_dir` to Markdown
    and returns the list of resulting ProcessedFile objects.
    """
    logging.info("🔁 Converting static .tex files to Markdown...")

    # List of filename prefixes to exclude from conversion
    excluded_prefixes = ["preamble", "STS-Diagram", "Rewards-Diagram", "RewardsTiming-Diagram"]

    discovery_result = ls_dir(config.source_paths.latex_dir, pattern="**/*.tex")
    if discovery_result.is_err:
        return Result.err(discovery_result.unwrap_err().with_context(stage="discovering static .tex"))

    tex_files = [
        f for f in discovery_result.unwrap()
        if not any(f.name.startswith(prefix) for prefix in excluded_prefixes)
    ]

    if not tex_files:
        logging.info("📭 No static LaTeX files to convert.")
        return Result.ok([])

    converted_results = [
        _convert_single_tex_to_md(tex_file, config.build_paths.build_md_in_dir)
        for tex_file in tex_files
    ]

    from utils.pipeline_types import sequence_results
    final_result = sequence_results(converted_results)

    if final_result.is_ok:
        logging.info(f"✅ Converted {len(final_result.unwrap())} static .tex files to Markdown")

    return final_result
