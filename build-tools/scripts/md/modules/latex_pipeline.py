# build-tools/scripts/md/modules/latex_pipeline.py
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
from functools import reduce
from dataclasses import dataclass
from pathlib import Path
from typing import List, Dict, Tuple, Optional, Set
import subprocess
import json
import logging
import re
import sys
import shutil
#from markdownify import markdownify  # optionally for cleaning input

# Add path for our functional imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from modules.latex_preprocessor import process_latex_content
from modules.bibtex_processor import BibTeXProcessor, generate_global_bibliography_page, format_bibliography_entry
from modules.source_headers import ensure_source_header_str
from utils.command_runner import run_command
from utils.file_ops import read_text, write_text, load_json, write_json, calculate_file_metadata
from utils.pipeline_types import (
    Result, PipelineError, ErrorType,
    ProcessedFile, ProcessingStage
)
from utils.text_processing import (
    process_admonitions,
    replace_code_placeholder,
    replace_figure_placeholder,
    replace_cross_ref_placeholder,
    slugify,
    get_flat_filename
)


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
# LaTeX Preprocessing Stage
# =============================================================================


def _write_preprocessed_artifacts(
    processed_data: Tuple[str, Dict],
    stage: LaTeXProcessingStage
) -> Result[None, PipelineError]:
    """Helper function to write the text and code-block files."""
    # This named function allows us to use assignment statements.
    processed_text, code_blocks = processed_data
    return (
        write_text(stage.temp_file, processed_text)
        .and_then(lambda _: write_json(stage.code_blocks_file, code_blocks))
    )

def run_preprocess_stage(
    processing_stage: LaTeXProcessingStage,
    macros_json_path: Path
) -> Result[None, PipelineError]:
    """
    Transforms a .lagda file into a pre-processed .lagda.temp file
    and extracts its code blocks to a .codeblocks.json file.
    """
    # This functional chain reads the two necessary input files,
    # processes them, and then writes the two output files.
    return (
        # 1. Load the macro definitions and the source content
        load_json(macros_json_path)
        .and_then(lambda macros:
        # 2. Read the source file content
            read_text(processing_stage.source_file)
            .map(lambda content: (macros, content))
        )
        # 3. If loading succeeds, run the pure processing function
        .map(lambda data: process_latex_content(data[1], data[0]))
        # 4. If processing succeeds, use the named helper to write the artifacts
        .and_then(lambda processed: _write_preprocessed_artifacts(processed, processing_stage))
    )

# =============================================================================
# Pandoc + Lua Filter Stage
# =============================================================================

def run_pandoc_stage(
    processing_stage: LaTeXProcessingStage,
    lua_filter_path: Path,
    build_dir: Path
) -> Result[None, PipelineError]:
    """
    Applies Pandoc + Lua filter, ensuring the output directory exists first.
    """
    try:
        # Ensure the parent directory for the output file exists.
        processing_stage.intermediate_file.parent.mkdir(parents=True, exist_ok=True)
    except OSError as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PERMISSION_DENIED,
            message=f"Failed to create Pandoc output directory for {processing_stage.intermediate_file}",
            cause=e
        ))

    command = [
        "pandoc", str(processing_stage.temp_file),
        "-f", "latex",
        "-t", "gfm+attributes",
        "--lua-filter", str(lua_filter_path),
        "-o", str(processing_stage.intermediate_file)
    ]

    result = run_command(command)
    return result.map(lambda _: None)


# =============================================================================
# Headers (e.g., add `source_path` for link to original source code)
# =============================================================================

_FRONT_MATTER_RE = re.compile(r"^(---\s*\n.*?\n---\s*\n)", re.DOTALL)
def _add_or_update_source_header(content: str, source_path_value: str) -> str:
    """
    Ensure a YAML front matter exists and contains `source_path: <value>`.
    If front matter exists, update or insert the key; otherwise create it.
    """
    m = _FRONT_MATTER_RE.match(content)
    if m:
        fm, rest = m.group(1), content[m.end():]
        if re.search(r"^source_path\s*:", fm, flags=re.MULTILINE):
            fm = re.sub(r"^source_path\s*:.*$", f"source_path: {source_path_value}", fm, flags=re.MULTILINE)
        else:
            fm = fm.replace("---\n", f"---\nsource_path: {source_path_value}\n", 1)
        return fm + rest
    else:
        return f"---\nsource_path: {source_path_value}\n---\n\n" + content


# =============================================================================
# Bibliography Processing Stage (Applied to LaTeX Temp Files)
# =============================================================================

def run_bibliography_stage(
    processing_stage: LaTeXProcessingStage,
    bibliography_path: Path
) -> Result[Set[str], PipelineError]:
    """
    Process bibliography citations in a file and return the set of keys that were used.
    """

    # Create BibTeX processor with LaTeX output format
    from modules.bibtex_processor import BibliographyConfig
    latex_config = BibliographyConfig.latex_alpha()  # Use LaTeX format

    processor_result = BibTeXProcessor.from_file(bibliography_path, latex_config)
    if processor_result.is_err:
        logging.warning(f"Failed to create BibTeX processor: {processor_result.unwrap_err()}")
        return Result.ok(set())

    processor = processor_result.unwrap()

    # Read and process content (rest same as before)
    if not processing_stage.temp_file.exists():
        return Result.err(PipelineError(
            error_type=ErrorType.FILE_NOT_FOUND,
            message=f"Temp file not found: {processing_stage.temp_file}"
        ))

    content = processing_stage.temp_file.read_text(encoding='utf-8')
    logging.debug(f"      📚  Processing bibliography for {processing_stage.relative_path}")
    processed_content, replacements, _ = processor.process_content(content)

    # 1. Collect the keys that were actually found and replaced.
    used_keys = {key for replacement in replacements for key in replacement.referenced_keys}

    # 2. Build the bibliography section using the "latex" format
    if used_keys:
        used_entries = sorted([processor.bibliography[key] for key in used_keys], key=lambda e: e.short_label)
        bib_lines = ["\\section*{References}"]
        for entry in used_entries:
            # Use a LaTeX-compatible label and call the formatter with "latex"
            label = f"\\textbf{{[{entry.short_label}]}} \\label{{{entry.key}}}"
            citation_text = format_bibliography_entry(entry, output_format="latex")
            bib_lines.append(f"{label} {citation_text}\n")

        bibliography_section = "\n".join(bib_lines)
        processed_content += f"\n\n{bibliography_section}"

    # 3. Write the final content back to the file.
    write_text(processing_stage.temp_file, processed_content)

    logging.debug(f"✅ Bibliography processing complete: {len(replacements)} citations processed in {processing_stage.relative_path.name}")
    return Result.ok(used_keys)


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


def _convert_latex_to_markdown(
    tex_file: Path,
    output_dir: Path
) -> Result[Path, PipelineError]:
    """
    Convert a LaTeX file to Markdown using Pandoc.

    Args:
        tex_file: Path to the LaTeX source file (.tex)
        output_dir: Directory to store the converted .md file

    Returns:
        Result with path to generated Markdown file or error
    """
    try:
        if not tex_file.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.INPUT_ERROR,
                message=f"LaTeX file does not exist: {tex_file}"
            ))

        output_file = output_dir / tex_file.with_suffix(".md").name
        output_dir.mkdir(parents=True, exist_ok=True)

        command = [
            "pandoc",
            str(tex_file),
            "-f", "latex",
            "-t", "gfm",  # GitHub-flavored Markdown
            "-o", str(output_file),
            "--wrap=preserve",
            "--markdown-headings=atx"
        ]

        result = subprocess.run(
            command,
            check=True,
            capture_output=True,
            text=True
        )

        return Result.ok(output_file)

    except subprocess.CalledProcessError as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Pandoc failed to convert {tex_file}",
            cause=e
        ))

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.UNEXPECTED_ERROR,
            message=f"Unexpected error during LaTeX-to-Markdown conversion: {e}",
            cause=e
        ))

def _extract_labels_from_markdown_file(md_file: Path, config: BuildConfig) -> Dict[str, Dict[str, str]]:
    """
    Extracts section labels from a markdown file using `{#label}` syntax.
    """
    label_map = {}
    content = md_file.read_text(encoding="utf-8")
    pattern = re.compile(r"^#+\s+(.+?)\s+\{#([^}]+)\}", re.MULTILINE)

    for match in pattern.finditer(content):
        title, label_id = match.group(1).strip(), match.group(2)
        label_map[label_id] = {
            "file": get_flat_filename(md_file.relative_to(config.source_paths.mkdocs_docs_dir)),
            "anchor": f"#{label_id}",
            "caption_text": title,
        }
    return label_map


def _handle_static_sources(config: BuildConfig) -> Dict[str, Dict[str, str]]:
    label_map = {}
    static_md_dir = config.source_paths.mkdocs_docs_dir
    if static_md_dir.exists():
        for md_file in static_md_dir.rglob("*.md"):
            label_map.update(_extract_labels_from_markdown_file(md_file, config))
    return label_map


def extract_labels_from_temp_files(
    processing_stages: List[LaTeXProcessingStage],
    config: BuildConfig
) -> Result[Dict[str, Dict[str, str]], PipelineError]:
    """
    Extracts global label mapping from temporary files.

    Handles:
    - Figures
    - Theorems, Lemmas, Claims
    - Section labels (with manual association)
    """
    try:
        label_map = {}

        figure_pattern = re.compile(r"@@FIGURE_BLOCK_TO_SUBSECTION@@label=(.*?)@@caption=(.*?)@@", re.DOTALL)
        theorem_pattern = re.compile(r"@@(THEOREM|LEMMA|CLAIM)_BLOCK@@label=(.*?)@@title=(.*?)@@", re.DOTALL)
        section_label_pattern = re.compile(r"\\label\{(.*?)\}")
        section_heading_pattern = re.compile(r"\\section\*?\{(.+?)\}", re.DOTALL)

        for stage in processing_stages:
            if not stage.temp_file.exists():
                continue

            content = stage.temp_file.read_text(encoding="utf-8")
            flat_filename = get_flat_filename(stage.relative_path)

            # === FIGURES ===
            for match in figure_pattern.finditer(content):
                label_id = match.group(1).replace("@ @", "@@")
                caption = match.group(2).replace("@ @", "@@")
                label_map[label_id] = {
                    "file": flat_filename,
                    "anchor": f"#{slugify(caption)}",
                    "caption_text": caption,
                }

            # === THEOREM/LEMMA/CLAIM ===
            for match in theorem_pattern.finditer(content):
                kind = match.group(1).capitalize()
                label_id = match.group(2).replace("@ @", "@@")
                title = match.group(3).replace("@ @", "@@")
                full_title = f"{kind} ({title.strip(': ')})"
                label_map[label_id] = {
                    "file": flat_filename,
                    "anchor": f"#{label_id}",
                    "caption_text": full_title,
                }

            # === SECTION LABELS ===
            for match in section_label_pattern.finditer(content):
                label_id = match.group(1).replace("@ @", "@@")
                before = content[:match.start()]
                section_match = list(section_heading_pattern.finditer(before))[-1:]
                section_title = section_match[0].group(1).strip() if section_match else label_id
                label_map[label_id] = {
                    "file": flat_filename,
                    "anchor": f"#{label_id}", # section_title
                    "caption_text": section_title,
                }

        # Merge in static Markdown labels
        label_map.update(_handle_static_sources(config))

        return Result.ok(label_map)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PARSING_ERROR,
            message=f"Failed to extract labels: {e}",
            cause=e
        ))



def replace_math_block(kind: str, label: str, title: str, body: str) -> str:
    """Creates the Markdown for a theorem, lemma, or claim block."""
    anchor = f'<a id="{label}"></a>\n' if label and label != "none" else ""
    heading = f"**{kind.capitalize()} ({title.strip(': ').strip()}).**"
    return f"{anchor}{heading}\n\n{body.strip()}\n"

# =============================================================================
# High-Level Pipeline Composition
# =============================================================================

def _apply_all_postprocessing(
    content: str,
    code_blocks: Dict,
    label_map: Dict
) -> str:
    """
    Applies a sequence of text transformations to the content in a pure functional style.
    """
    # The full HTML for the button, to be inserted during post-processing.
    reveal_button_html = r'<p style="text-align: center;"><button class="reveal-proof-button" onclick="toggleAgdaVisibility()">Reveal the proof</button></p>'

    transformations = [
        lambda c: re.sub(r'@@CODEBLOCK_ID_\d+@@', lambda m: replace_code_placeholder(m, code_blocks), c),
        lambda c: re.sub(r"@@FIGURE_BLOCK_TO_SUBSECTION@@label=(.*?)@@caption=(.*?)@@", replace_figure_placeholder, c, flags=re.DOTALL),
        lambda c: re.sub(r"@@UNLABELLED_FIGURE_CAPTION@@caption=(.*?)@@", replace_figure_placeholder, c, flags=re.DOTALL),
        lambda c: re.sub(r"@@CROSS_REF@@command=(.*?)@@targets=(.*?)@@", lambda m: replace_cross_ref_placeholder(m, label_map), c, flags=re.DOTALL),
        lambda c: re.sub(r"@@(THEOREM|LEMMA|CLAIM)_BLOCK@@label=(.*?)@@title=(.*?)@@\n(.*?)(?=\n@@|\Z)", lambda m: replace_math_block(m.group(1).lower(), m.group(2), m.group(3), m.group(4)), c, flags=re.DOTALL),
        lambda c: re.sub(r"@@(THEOREM|LEMMA|CLAIM)_BLOCK@@title=(.*?)@@\n(.*?)(?=\n@@|\Z)", lambda m: replace_math_block(m.group(1).lower(), "none", m.group(2), m.group(3)), c, flags=re.DOTALL),
        process_admonitions
    ]

    # apply each transformation to the result of the previous one
    return reduce(lambda current_content, func: func(current_content), transformations, content)

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
    logging.info("   🏳️  STAGE 1: Pre-processing...")
    for stage in processing_stages:
        result = run_preprocess_stage(
            stage,
            config.build_paths.macros_json_path
        )
        if result.is_err: return Result.err(result.unwrap_err())
    logging.info(f"      ✔️  Pre-processing completed.")

    # STAGE 2: Bibliography processing (.lagda.temp with LaTeX citations → .lagda.temp with markdown links + bibliography)
    # This must happen BEFORE pandoc converts LaTeX to markdown.
    logging.info("   🏳️  STAGE 2: Bibliography processing...")
    bibliography_stats = {"files_with_citations": 0, "total_citations": 0}
    all_cited_keys: Set[str] = set() # Initialize an empty set for all keys
    files_with_citations = 0

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
            # Log the error but continue, as this is not a build-halting failure
            logging.warning(f"Bibliography processing failed for {stage.relative_path}: {result.unwrap_err().message}")
            continue

        # On success, update the master set of keys
        cited_keys_in_file = result.unwrap()
        if cited_keys_in_file:
            files_with_citations += 1
            all_cited_keys.update(cited_keys_in_file)

    logging.info(f"      ✔️  Bibliography processing completed: found citations in {files_with_citations} files.")

    # STAGE 3: Generate label map (from bibliography-processed temp files)
    # Extract cross-reference labels after bibliography processing adds section headers.
    logging.info("   🏳️  STAGE 3: Generating label map...")
    label_map_result = extract_labels_from_temp_files(processing_stages, config)
    if label_map_result.is_err: return Result.err(label_map_result.unwrap_err())
    label_map = label_map_result.unwrap()
    logging.info(f"      ✔️  Label map generation completed: created {len(label_map)} labels.")

    # STAGE 4: Pandoc processing (.lagda.temp → .md.intermediate)
    # Processes temp files that already have markdown citations and bibliography sections.
    logging.info("   🏳️  STAGE 4: Running Pandoc + Lua filter...")
    for stage in processing_stages:
        result = run_pandoc_stage(
            stage,
            config.source_paths.md_scripts_dir / "agda-filter.lua",
            config.build_paths.build_dir
        )
        if result.is_err: return Result.err(result.unwrap_err())
    logging.info("      ✔️️  Pandoc + Lua filter stage completed.")

    # STAGE 5: Postprocessing (.md.intermediate → .lagda.md)
    # Resolves cross-references and restores code blocks,
    # refactored to use a functional monadic chain.
    logging.info("   🏳️  STAGE 5: Running post-processing...")
    for stage in processing_stages:
        post_process_result = (
            # 5.1. Load the necessary data for this file
            load_json(stage.code_blocks_file)
            .and_then(lambda code_blocks:
                read_text(stage.intermediate_file)
                .map(lambda content: (content, code_blocks))
            )
            # 5.2. Apply all transformations in a single, pure step
            .map(lambda data: _apply_all_postprocessing(data[0], data[1], label_map))
            # 5.3. Add header that points to the original source file in repo
            .map(lambda final_md: ensure_source_header_str(
                final_md,
                source_path=f"src/{stage.relative_path.as_posix()}",  # .lagda path (repo-relative)
                source_branch="master"                                # optional
            ))
            # 5.4. Write the final result to disk
            .and_then(lambda final_content: write_text(stage.final_file, final_content))
        )

        if post_process_result.is_err:
            error = post_process_result.unwrap_err()
            if isinstance(error, PipelineError):
                if error.error_type == ErrorType.FILE_NOT_FOUND:
                    logging.warning(f"Skipping post-processing for {stage.relative_path}: {error.message}")
                    continue
                else:
                    return Result.err(error)
            else:
                # Log unexpected errors more gracefully
                logging.error(f"Unexpected error during post-processing of {stage.relative_path}: {error}")
                return Result.err(PipelineError(
                    error_type=ErrorType.PARSING_ERROR,
                    message=f"Unexpected error: {error}",
                    cause=error
                ))



    logging.info("      ✔️️  Post-processing completed.")

    # STAGE 6: After all files are processed, generate the global bibliography
    logging.info("   🏳️  STAGE 6: Generating global bibliography page...")
    bib_processor_result = BibTeXProcessor.from_file(config.source_paths.references_bib_path)
    if bib_processor_result.is_ok:
        bib_page_path = config.build_paths.mkdocs_docs_dir / "references.md"
        generate_global_bibliography_page(
            all_cited_keys,
            bib_processor_result.unwrap(),
            bib_page_path
        )
    else:
        logging.warning("Could not create BibTeX processor to generate global bibliography.")
    logging.info("      ✔️️  Global bibliography page generation completed.")


    # STAGE 7: Cleanup (remove original .lagda files to prevent Agda module conflicts)
    logging.info("   🏳️  STAGE 7: Running cleanup...")
    for stage in processing_stages:
        result = cleanup_original_lagda_file(stage)
        if result.is_err:
            # Log warning but continue - cleanup failure shouldn't fail the whole pipeline
            error = result.unwrap_err()
            logging.warning(f"Cleanup failed for {stage.relative_path}: {error.message}")
    logging.info("      ✔️️  Cleanup completed.")

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
        "files_with_citations": files_with_citations,
        "labels_extracted": len(label_map),
        "total_stages": len(processing_stages)
    }

    result = LaTeXProcessingResult(
        processed_files=tuple(processed_files),
        label_map=label_map,
        processing_statistics=statistics
    )

    logging.info("✅️  LaTeX processing completed.")

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
    logging.info(f"    📊  Statistics: {stats['files_processed']} files processed, {stats['labels_extracted']} labels extracted, {stats['total_stages']} processing stages")

    return Result.ok(list(latex_result.processed_files))


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
