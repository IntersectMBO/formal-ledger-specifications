#!/usr/bin/env python3

"""
LaTeX pipeline module for the documentation build system.

Mathematical transformation: .lagda → preprocess → pandoc+lua → postprocess → bibliography → .lagda.md

This module provides pure functional transformations for:
- LaTeX preprocessing (extracting code blocks, processing macros)
- Label mapping and cross-reference resolution
- Pandoc + Lua filter processing
- Postprocessing with cross-reference resolution
- Bibliography processing with citation conversion
- Final cleanup

Design: LaTeX → Preprocessed → Intermediate → Postprocessed → Bibliography → Final Markdown
"""

from __future__ import annotations
from dataclasses import dataclass
from pathlib import Path
from typing import List, Dict, Tuple, Optional
import subprocess
import json
import logging
import sys

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from utils.pipeline_types import (
    Result, PipelineError, ErrorType,
    ProcessedFile, ProcessingStage
)

# Try to import bibliography processing
try:
    from modules.bibliography_stage import process_bibliography_stage
    HAS_BIBLIOGRAPHY_PROCESSING = True
except ImportError:
    HAS_BIBLIOGRAPHY_PROCESSING = False
    logging.warning("Bibliography processing not available")

# =============================================================================
# Mathematical Types for LaTeX Processing
# =============================================================================

@dataclass(frozen=True)
class LaTeXProcessingStage:
    """Immutable representation of a LaTeX processing stage."""

    source_file: Path
    temp_file: Path
    code_blocks_file: Path
    intermediate_file: Path
    postprocess_file: Path  # NEW: intermediate file after postprocessing
    final_file: Path
    relative_path: Path

    @classmethod
    def from_source_file(
        cls,
        source_file: Path,
        source_root: Path,
        temp_dir: Path,
        code_blocks_dir: Path,
        intermediate_dir: Path,
        target_dir: Path
    ) -> LaTeXProcessingStage:
        """Pure constructor: Create processing paths from source file."""

        relative_path = source_file.relative_to(source_root)

        return cls(
            source_file=source_file,
            temp_file=temp_dir / relative_path.with_suffix(".lagda.temp"),
            code_blocks_file=code_blocks_dir / relative_path.with_suffix(".codeblocks.json"),
            intermediate_file=intermediate_dir / relative_path.with_suffix(".md.intermediate"),
            postprocess_file=intermediate_dir / relative_path.with_suffix(".md.postprocess"),  # NEW
            final_file=target_dir / relative_path.with_suffix(".lagda.md"),
            relative_path=relative_path
        )

    def ensure_directories(self) -> None:
        """Ensure all parent directories exist (side effect for file creation)."""
        for path in [self.temp_file, self.code_blocks_file,
                    self.intermediate_file, self.postprocess_file, self.final_file]:
            path.parent.mkdir(parents=True, exist_ok=True)


@dataclass(frozen=True)
class LaTeXProcessingResult:
    """Immutable result of LaTeX processing pipeline."""

    processed_files: Tuple[ProcessedFile, ...]
    label_map: Dict[str, Dict[str, str]]
    processing_statistics: Dict[str, int]


# =============================================================================
# Command Execution (Functional Wrapper)
# =============================================================================

def run_command_functional(
    command: List[str],
    cwd: Optional[Path] = None,
    stdout_file: Optional[Path] = None
) -> Result[subprocess.CompletedProcess, PipelineError]:
    """Pure functional command execution with Result error handling."""

    try:
        logging.debug(f"Executing: {' '.join(command)}")

        if stdout_file:
            stdout_file.parent.mkdir(parents=True, exist_ok=True)
            with open(stdout_file, 'w', encoding='utf-8') as f:
                process = subprocess.run(
                    command,
                    cwd=cwd,
                    stdout=f,
                    stderr=subprocess.PIPE,
                    text=True,
                    check=False
                )
        else:
            process = subprocess.run(
                command,
                cwd=cwd,
                capture_output=True,
                text=True,
                check=False
            )

        if process.returncode != 0:
            return Result.err(PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message=f"Command failed: {' '.join(command)}",
                context={
                    "command": command,
                    "return_code": process.returncode,
                    "stderr": process.stderr,
                    "cwd": str(cwd) if cwd else None
                }
            ))

        return Result.ok(process)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Command execution failed: {e}",
            context={"command": command},
            cause=e
        ))


# =============================================================================
# LaTeX Preprocessing Stage
# =============================================================================

def run_preprocess_stage(
    processing_stage: LaTeXProcessingStage,
    macros_json_path: Path,
    preprocess_script: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .lagda → preprocessed (.lagda.temp + .codeblocks.json)

    This is a pure function that applies the preprocess.py transformation.
    """

    processing_stage.ensure_directories()

    command = [
        "python", str(preprocess_script),
        str(processing_stage.source_file),
        str(macros_json_path),
        str(processing_stage.code_blocks_file)
    ]

    result = run_command_functional(
        command,
        stdout_file=processing_stage.temp_file
    )

    return result.map(lambda _: None)


# =============================================================================
# Pandoc + Lua Filter Stage
# =============================================================================

def run_pandoc_stage(
    processing_stage: LaTeXProcessingStage,
    lua_filter_path: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .lagda.temp → .md.intermediate

    Applies Pandoc + Lua filter transformation.
    """

    command = [
        "pandoc", str(processing_stage.temp_file),
        "-f", "latex",
        "-t", "gfm+attributes",
        "--lua-filter", str(lua_filter_path),
        "-o", str(processing_stage.intermediate_file)
    ]

    result = run_command_functional(command)
    return result.map(lambda _: None)


# =============================================================================
# Postprocessing Stage
# =============================================================================

def run_postprocess_stage(
    processing_stage: LaTeXProcessingStage,
    labels_map_path: Path,
    postprocess_script: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .md.intermediate → .md.postprocess

    Applies postprocess.py transformation with cross-reference resolution.
    """

    command = [
        "python", str(postprocess_script),
        str(processing_stage.intermediate_file),
        str(processing_stage.code_blocks_file),
        str(labels_map_path),
        str(processing_stage.postprocess_file)  # Output to intermediate postprocess file
    ]

    result = run_command_functional(command)
    return result.map(lambda _: None)


# =============================================================================
# Bibliography Processing Stage
# =============================================================================

def run_bibliography_stage(
    processing_stage: LaTeXProcessingStage,
    bibliography_path: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .md.postprocess → .lagda.md (with bibliography)

    Applies bibliography processing using functional modules.
    """

    if not HAS_BIBLIOGRAPHY_PROCESSING:
        # Fallback: just copy postprocess file to final file
        try:
            if processing_stage.postprocess_file.exists():
                import shutil
                shutil.copy2(processing_stage.postprocess_file, processing_stage.final_file)
                logging.warning(f"Bibliography processing not available, copying without bibliography")
                return Result.ok(None)
            else:
                return Result.err(PipelineError(
                    error_type=ErrorType.FILE_NOT_FOUND,
                    message=f"Postprocess file not found: {processing_stage.postprocess_file}"
                ))
        except Exception as e:
            return Result.err(PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message=f"Failed to copy postprocess file: {e}",
                cause=e
            ))

    # Use functional bibliography processing
    logging.debug(f"📚 Processing bibliography for {processing_stage.relative_path}")

    bib_result = process_bibliography_stage(
        input_md_file=processing_stage.postprocess_file,
        bib_file=bibliography_path,
        output_md_file=processing_stage.final_file
    )

    if bib_result.is_err:
        error = bib_result.unwrap_err()
        logging.warning(f"Bibliography processing failed: {error.message}")

        # Fallback: copy postprocess file without bibliography
        try:
            if processing_stage.postprocess_file.exists():
                import shutil
                shutil.copy2(processing_stage.postprocess_file, processing_stage.final_file)
                logging.warning(f"Falling back to version without bibliography processing")
                return Result.ok(None)
        except Exception as e:
            return Result.err(PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message=f"Bibliography processing failed and fallback failed: {e}",
                cause=e
            ))

    return Result.ok(None)


# =============================================================================
# Cleanup Stage
# =============================================================================

def cleanup_original_lagda_file(
    processing_stage: LaTeXProcessingStage
) -> Result[None, PipelineError]:
    """
    Pure function: Remove original .lagda file after successful .lagda.md creation.

    This prevents Agda module ambiguity when both f.lagda and f.lagda.md exist.
    Mathematical operation: Remove f.lagda iff f.lagda.md ∃
    """
    try:
        if processing_stage.final_file.exists():
            # Original source file should be removed from snapshot
            if processing_stage.source_file.exists():
                processing_stage.source_file.unlink()
                logging.debug(f"  Removed original .lagda: {processing_stage.source_file.name}")

        return Result.ok(None)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to cleanup original .lagda file: {e}",
            context={"source_file": str(processing_stage.source_file)},
            cause=e
        ))


# =============================================================================
# Label Map Generation
# =============================================================================

def extract_labels_from_temp_files(
    processing_stages: List[LaTeXProcessingStage]
) -> Result[Dict[str, Dict[str, str]], PipelineError]:
    """
    Pure function: Extract global label mapping from temporary files.

    Mathematical operation: [TempFile] → LabelMap
    """

    try:
        import re

        label_map = {}

        for stage in processing_stages:
            if not stage.temp_file.exists():
                continue

            content = stage.temp_file.read_text(encoding='utf-8')

            # Extract figure block labels using regex
            pattern = r"@@FIGURE_BLOCK_TO_SUBSECTION@@label=(.*?)@@caption=(.*?)@@"

            for match in re.finditer(pattern, content, re.DOTALL):
                label_id = match.group(1).replace("@ @", "@@")
                caption_text = match.group(2).replace("@ @", "@@")

                # Calculate flat filename for this stage
                flat_filename = calculate_flat_filename(stage.relative_path)

                label_map[label_id] = {
                    "file": flat_filename,
                    "anchor": f"#{slugify(caption_text)}",
                    "caption_text": caption_text
                }

        return Result.ok(label_map)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PARSING_ERROR,
            message=f"Failed to extract labels: {e}",
            cause=e
        ))


def calculate_flat_filename(relative_path: Path) -> str:
    """Pure function: Calculate flat filename from relative path."""

    module_parts = list(relative_path.parent.parts)
    file_stem = relative_path.stem

    # Handle index files
    if file_stem.lower() == "index":
        if not module_parts:
            return "index.md"
        flat_name = ".".join(module_parts)
    else:
        if module_parts:
            module_parts.append(file_stem)
            flat_name = ".".join(module_parts)
        else:
            flat_name = file_stem

    return f"{flat_name}.md"


def slugify(text: str) -> str:
    """Pure function: Convert text to URL-safe slug."""
    import re

    if not text:
        return "section"

    slug = text.lower()
    slug = re.sub(r'[^\w\s-]', '', slug)
    slug = re.sub(r'[-\s]+', '-', slug)
    slug = slug.strip('-')

    return slug if slug else "section"


# =============================================================================
# High-Level Pipeline Composition
# =============================================================================

def process_latex_files(
    latex_files: List[Path],
    config: BuildConfig
) -> Result[LaTeXProcessingResult, PipelineError]:
    """
    Complete LaTeX processing pipeline composition.

    Mathematical composition:
    process = cleanup ∘ bibliography ∘ postprocess ∘ pandoc ∘ preprocess

    This is the main entry point for LaTeX processing.
    """

    logging.info(f"🔄 Processing {len(latex_files)} LaTeX files...")

    # Create processing stages for all files
    processing_stages = []
    for latex_file in latex_files:
        stage = LaTeXProcessingStage.from_source_file(
            source_file=latex_file,
            source_root=config.build_paths.agda_snapshot_src_dir,
            temp_dir=config.build_paths.temp_dir,
            code_blocks_dir=config.build_paths.code_blocks_dir,
            intermediate_dir=config.build_paths.intermediate_md_dir,
            target_dir=config.build_paths.agda_snapshot_src_dir
        )
        processing_stages.append(stage)

    # Stage 1: Preprocessing
    logging.info("🔄 Running preprocessing stage...")
    for stage in processing_stages:
        result = run_preprocess_stage(
            stage,
            config.build_paths.macros_json_path,
            config.source_paths.md_scripts_dir / "preprocess.py"
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # Stage 2: Generate label map
    logging.info("🔄 Generating label map...")
    label_map_result = extract_labels_from_temp_files(processing_stages)
    if label_map_result.is_err:
        return Result.err(label_map_result.unwrap_err())

    label_map = label_map_result.unwrap()

    # Save label map
    labels_map_path = config.build_paths.build_md_aux_dir / "labels_map.json"
    try:
        labels_map_path.parent.mkdir(parents=True, exist_ok=True)
        with open(labels_map_path, 'w', encoding='utf-8') as f:
            json.dump(label_map, f, indent=2)
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to save label map: {e}",
            cause=e
        ))

    # Stage 3: Pandoc processing
    logging.info("🔄 Running Pandoc + Lua filter stage...")
    for stage in processing_stages:
        result = run_pandoc_stage(
            stage,
            config.source_paths.md_scripts_dir / "agda-filter.lua"
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # Stage 4: Postprocessing
    logging.info("🔄 Running postprocessing stage...")
    for stage in processing_stages:
        result = run_postprocess_stage(
            stage,
            labels_map_path,
            config.source_paths.md_scripts_dir / "postprocess.py"
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # Stage 5: Bibliography processing (NEW!)
    logging.info("🔄 Running bibliography processing stage...")
    for stage in processing_stages:
        result = run_bibliography_stage(
            stage,
            config.source_paths.references_bib_path
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # Stage 6: Cleanup
    logging.info("🔄 Running cleanup stage...")
    for stage in processing_stages:
        result = cleanup_original_lagda_file(stage)
        if result.is_err:
            return Result.err(result.unwrap_err())

    # Create ProcessedFile objects for results
    processed_files = []
    for stage in processing_stages:
        if stage.final_file.exists():
            processed_file = ProcessedFile(
                source_path=stage.source_file,
                current_path=stage.final_file,
                metadata=calculate_file_metadata(stage.final_file, ProcessingStage.POSTPROCESSED),
                content_hash=""
            )
            processed_files.append(processed_file)

    statistics = {
        "files_processed": len(processed_files),
        "labels_extracted": len(label_map),
        "total_stages": len(processing_stages)
    }

    result = LaTeXProcessingResult(
        processed_files=tuple(processed_files),
        label_map=label_map,
        processing_statistics=statistics
    )

    logging.info(f"✅ LaTeX processing completed: {len(processed_files)} files")

    return Result.ok(result)


# =============================================================================
# Integration Function
# =============================================================================

def latex_pipeline_stage(
    latex_files: List[Path],
    config: BuildConfig
) -> Result[List[ProcessedFile], PipelineError]:
    """
    Pipeline integration function for LaTeX processing.

    This function integrates with the larger functional pipeline.
    """

    result = process_latex_files(latex_files, config)

    if result.is_err:
        return Result.err(result.unwrap_err())

    latex_result = result.unwrap()

    # Log statistics
    stats = latex_result.processing_statistics
    logging.info(f"LaTeX pipeline statistics:")
    logging.info(f"  Files processed: {stats['files_processed']}")
    logging.info(f"  Labels extracted: {stats['labels_extracted']}")
    logging.info(f"  Processing stages: {stats['total_stages']}")

    return Result.ok(list(latex_result.processed_files))


# =============================================================================
# Utility Functions
# =============================================================================

def calculate_file_metadata(file_path: Path, stage: ProcessingStage):
    """Helper function to calculate file metadata."""
    # Import from our types module
    from utils.pipeline_types import FileMetadata

    try:
        file_size = file_path.stat().st_size if file_path.exists() else 0

        return FileMetadata(
            relative_path=file_path.name,
            stage=stage,
            processing_time=0.0,
            file_size=file_size,
            checksum=""
        )
    except Exception:
        return FileMetadata(
            relative_path=Path(file_path.name),
            stage=stage,
            processing_time=0.0,
            file_size=0,
            checksum=""
        )


# =============================================================================
# Testing and Examples
# =============================================================================

if __name__ == "__main__":
    # Example usage for testing
    from config.build_config import load_build_config

    print("🧪 Testing LaTeX pipeline module...")

    config = load_build_config(mode="development")

    # Find LaTeX files in snapshot
    latex_files = list(config.build_paths.agda_snapshot_src_dir.rglob("*.lagda"))

    print(f"Found {len(latex_files)} LaTeX files to process")

    if latex_files:
        result = latex_pipeline_stage(latex_files[:2], config)  # Test with first 2 files

        if result.is_ok:
            processed = result.unwrap()
            print(f"✅ Successfully processed {len(processed)} files")
        else:
            error = result.unwrap_err()
            print(f"❌ Processing failed: {error}")

    print("✅ LaTeX pipeline module tests completed!")
