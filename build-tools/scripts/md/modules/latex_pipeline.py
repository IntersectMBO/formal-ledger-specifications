"""
LaTeX pipeline module for the documentation build system.

Mathematical transformation:

.lagda → preprocess → bibliography → label_map → pandoc+lua → postprocess → .lagda.md

This module provides pure functional transformations for:
- LaTeX preprocessing (extracting code blocks, processing macros)
- Label mapping and cross-reference resolution
- Bibliography processing with citation conversion
- Pandoc + Lua filter processing
- Postprocessing with cross-reference resolution
- Final cleanup

New transformation ordering:

LaTeX(.lagda) → preprocess → LaTeX(.lagda.temp) with \textcite{shelley-ledger-spec}
              ↓
           bibliography → LaTeX(.lagda.temp) with [SL19](#shelley-ledger-spec) + bibliography section
              ↓
           pandoc → Markdown(.md.intermediate) with proper hyperlinks
              ↓
           postprocess → Final(.lagda.md) with working bibliography
"""

from __future__ import annotations
from dataclasses import dataclass
from pathlib import Path
from typing import List, Dict, Tuple, Optional
import subprocess
import json
import logging
import sys
import shutil

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from modules.agda_latex_preprocessor import process_latex_content
from config.build_config import BuildConfig
from utils.pipeline_types import Result, PipelineError, ErrorType, ProcessedFile, ProcessingStage
from utils.text_processing import slugify

# Import bibliography processing directly
from modules.bibtex_processor import BibTeXProcessor

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
            final_file=target_dir / relative_path.with_suffix(".lagda.md"),
            relative_path=relative_path
        )

    def ensure_directories(self) -> None:
        """Ensure all parent directories exist (side effect for file creation)."""
        for path in [self.temp_file, self.code_blocks_file,
                    self.intermediate_file, self.final_file]:
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
    macros_json_path: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .lagda → preprocessed (.lagda.temp + .codeblocks.json)

    This now uses the pure functional latex_processor module directly.
    """
    try:
        processing_stage.ensure_directories()

        # 1. Load the macro definitions
        with open(macros_json_path, 'r', encoding='utf-8') as f:
            macros = json.load(f)

        # 2. Read the source file content
        source_content = processing_stage.source_file.read_text(encoding='utf-8')

        # 3. Call the pure processing function
        processed_text, extracted_code_blocks = process_latex_content(source_content, macros)

        # 4. Write the results to their respective files (side-effect)
        processing_stage.temp_file.write_text(processed_text, encoding='utf-8')
        with open(processing_stage.code_blocks_file, 'w', encoding='utf-8') as f:
            json.dump(extracted_code_blocks, f, indent=2)

        return Result.ok(None)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Preprocessing failed for {processing_stage.source_file.name}",
            cause=e
        ))


# =============================================================================
# Pandoc + Lua Filter Stage
# =============================================================================

def run_pandoc_stage(
    processing_stage: LaTeXProcessingStage,
    lua_filter_path: Path,
    build_dir: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .lagda.temp → .md.intermediate
    Applies Pandoc + Lua filter transformation.
    """
    # Check if this is the file that is known to fail.
    if "EssentialAgda.lagda.temp" in str(processing_stage.temp_file):
        try:
            # AND CHANGE the name of the output file for clarity.
            debug_path = build_dir / "DEBUG_EssentialAgda.lagda.temp"
            shutil.copy2(processing_stage.temp_file, debug_path)
            logging.warning(f"DEBUG: Saved a copy of the failing intermediate file to: {debug_path}")
        except Exception as e:
            logging.error(f"DEBUG: Could not save a copy of the failing file: {e}")

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
    Mathematical transformation: .md.intermediate → .lagda.md
    Applies postprocess.py transformation with cross-reference resolution.
    """

    command = [
        "python", str(postprocess_script),
        str(processing_stage.intermediate_file),
        str(processing_stage.code_blocks_file),
        str(labels_map_path),
        str(processing_stage.final_file)  # Output directly to final file
    ]

    result = run_command_functional(command)
    return result.map(lambda _: None)


# =============================================================================
# Bibliography Processing Stage (Applied to LaTeX Temp Files)
# =============================================================================

def run_bibliography_stage(
    processing_stage: LaTeXProcessingStage,
    bibliography_path: Path
) -> Result[None, PipelineError]:
    """
    Mathematical transformation: .lagda.temp → .lagda.temp.withbib
    This version appends a bibliography section to the file itself.
    """

    # Create BibTeX processor with LaTeX output format
    from modules.bibtex_processor import BibliographyConfig
    latex_config = BibliographyConfig.latex_alpha()  # Use LaTeX format

    processor_result = BibTeXProcessor.from_file(bibliography_path, latex_config)
    if processor_result.is_err:
        logging.warning(f"Failed to create BibTeX processor: {processor_result.unwrap_err()}")
        return Result.ok(None)

    processor = processor_result.unwrap()

    # Read and process content (rest same as before)
    if not processing_stage.temp_file.exists():
        return Result.err(PipelineError(
            error_type=ErrorType.FILE_NOT_FOUND,
            message=f"Temp file not found: {processing_stage.temp_file}"
        ))

    content = processing_stage.temp_file.read_text(encoding='utf-8')
    logging.debug(f"📚 Processing bibliography for {processing_stage.relative_path}")
    processed_content, replacements, bibliography = processor.process_content(content)

    final_content = processed_content
    if bibliography.strip():
        final_content += f"\n\n{bibliography}"

    processing_stage.temp_file.write_text(final_content, encoding='utf-8')
    logging.debug(f"✅ Bibliography processing: {len(replacements)} citations processed")
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


# =============================================================================
# High-Level Pipeline Composition
# =============================================================================

def process_latex_files(
    latex_files: List[Path],
    config: BuildConfig
) -> Result[LaTeXProcessingResult, PipelineError]:
    """
    Complete LaTeX processing pipeline composition with correct bibliography ordering.

    Mathematical composition:
    process = cleanup ∘ postprocess ∘ pandoc ∘ label_map ∘ bibliography ∘ preprocess

    Correct transformation sequence:
    LaTeX(.lagda)
      → preprocess → LaTeX(.lagda.temp) with \textcite{refs}
      → bibliography → LaTeX(.lagda.temp) with [RefLabel](link) + bibliography section
      → label_map → extract cross-references for later resolution
      → pandoc → Markdown(.md.intermediate)
      → postprocess → Final(.lagda.md) with resolved cross-references
      → cleanup → remove original .lagda files
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

    # STAGE 1: Preprocessing (.lagda → .lagda.temp + .codeblocks.json)
    # Creates temp files with LaTeX citations still intact
    logging.info("🔄 Stage 1: Running preprocessing...")
    for stage in processing_stages:
        result = run_preprocess_stage(
            stage,
            config.build_paths.macros_json_path
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # STAGE 2: Bibliography processing (.lagda.temp with LaTeX citations → .lagda.temp with markdown links + bibliography)
    # *** CRITICAL: This must happen BEFORE pandoc converts LaTeX to markdown ***
    logging.info("🔄 Stage 2: Running bibliography processing (before pandoc)...")
    bibliography_stats = {"files_with_citations": 0, "total_citations": 0}

    for stage in processing_stages:
        # Check if file has citations before processing
        if stage.temp_file.exists():
            temp_content = stage.temp_file.read_text(encoding='utf-8')
            if any(pattern in temp_content for pattern in [r'\textcite', r'\cite{', r'\citep']):
                bibliography_stats["files_with_citations"] += 1

        result = run_bibliography_stage(
            stage,
            config.source_paths.references_bib_path
        )
        if result.is_err:
            # Log warning but continue - bibliography processing is enhancement, not critical
            error = result.unwrap_err()
            logging.warning(f"Bibliography processing failed for {stage.relative_path}: {error.message}")
            continue

    logging.info(f"✅ Bibliography stage: processed {bibliography_stats['files_with_citations']} files with citations")

    # STAGE 3: Generate label map (from bibliography-processed temp files)
    # Extract cross-reference labels after bibliography processing adds section headers
    logging.info("🔄 Stage 3: Generating label map...")
    label_map_result = extract_labels_from_temp_files(processing_stages)
    if label_map_result.is_err:
        return Result.err(label_map_result.unwrap_err())

    label_map = label_map_result.unwrap()

    # Save label map for postprocessing stage
    labels_map_path = config.build_paths.build_md_aux_dir / "labels_map.json"
    try:
        labels_map_path.parent.mkdir(parents=True, exist_ok=True)
        with open(labels_map_path, 'w', encoding='utf-8') as f:
            json.dump(label_map, f, indent=2)
        logging.info(f"✅ Label map saved: {len(label_map)} labels")
    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to save label map: {e}",
            cause=e
        ))

    # STAGE 4: Pandoc processing (.lagda.temp → .md.intermediate)
    # Now processes temp files that already have markdown citations and bibliography sections
    logging.info("🔄 Stage 4: Running Pandoc + Lua filter...")
    for stage in processing_stages:
        result = run_pandoc_stage(
            stage,
            config.source_paths.md_scripts_dir / "agda-filter.lua",
            config.build_paths.build_dir
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # STAGE 5: Postprocessing (.md.intermediate → .lagda.md)
    # Resolves cross-references and restores code blocks
    logging.info("🔄 Stage 5: Running postprocessing...")
    for stage in processing_stages:
        result = run_postprocess_stage(
            stage,
            labels_map_path,
            config.source_paths.md_scripts_dir / "postprocess.py"
        )
        if result.is_err:
            return Result.err(result.unwrap_err())

    # STAGE 6: Cleanup (remove original .lagda files to prevent Agda module conflicts)
    logging.info("🔄 Stage 6: Running cleanup...")
    for stage in processing_stages:
        result = cleanup_original_lagda_file(stage)
        if result.is_err:
            # Log warning but continue - cleanup failure shouldn't fail the whole pipeline
            error = result.unwrap_err()
            logging.warning(f"Cleanup failed for {stage.relative_path}: {error.message}")

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

    # Compile statistics
    statistics = {
        "files_processed": len(processed_files),
        "files_with_citations": bibliography_stats["files_with_citations"],
        "labels_extracted": len(label_map),
        "total_stages": len(processing_stages)
    }

    result = LaTeXProcessingResult(
        processed_files=tuple(processed_files),
        label_map=label_map,
        processing_statistics=statistics
    )

    logging.info(f"✅ LaTeX processing completed:")
    logging.info(f"   Files processed: {len(processed_files)}")
    logging.info(f"   Files with citations: {bibliography_stats['files_with_citations']}")
    logging.info(f"   Labels extracted: {len(label_map)}")

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
            relative_path=Path(file_path.name),
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
