#!/usr/bin/env python3
"""
Bibliography processing stage for the documentation pipeline.
Pure functional integration with the existing build system.
"""

import sys
from pathlib import Path
from typing import Tuple, List

# Add current directory to Python path
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

from modules.bibtex_processor import BibTeXProcessor, BibliographyConfig
from utils.pipeline_types import Result, PipelineError, ErrorType


def process_bibliography_stage(
    input_md_file: Path,
    bib_file: Path,
    output_md_file: Path
) -> Result[None, PipelineError]:
    """
    Pure function: Process bibliography citations in markdown file.

    This is designed to integrate seamlessly with our existing pipeline:
    - Reads processed markdown from postprocess.py
    - Replaces LaTeX citations with markdown links
    - Appends bibliography section
    - Writes final markdown file
    """

    try:
        # Create processor
        processor_result = BibTeXProcessor.from_file(bib_file)
        if processor_result.is_err:
            return Result.err(processor_result.unwrap_err())

        processor = processor_result.unwrap()

        # Read input content
        if not input_md_file.exists():
            return Result.err(PipelineError(
                error_type=ErrorType.FILE_NOT_FOUND,
                message=f"Input markdown file not found: {input_md_file}",
                context={"input_file": str(input_md_file)}
            ))

        content = input_md_file.read_text(encoding='utf-8')

        # Process citations
        processed_content, replacements, bibliography = processor.process_content(content)

        # Combine content with bibliography
        final_content = processed_content
        if bibliography.strip():
            final_content += f"\n\n{bibliography}"

        # Write output
        output_md_file.parent.mkdir(parents=True, exist_ok=True)
        output_md_file.write_text(final_content, encoding='utf-8')

        # Log success
        print(f"✅ Bibliography processing complete:", file=sys.stderr)
        print(f"   Citations processed: {len(replacements)}", file=sys.stderr)
        print(f"   Input: {input_md_file}", file=sys.stderr)
        print(f"   Output: {output_md_file}", file=sys.stderr)

        return Result.ok(None)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.PROCESSING_ERROR,
            message=f"Bibliography stage failed: {e}",
            context={"input_file": str(input_md_file), "output_file": str(output_md_file)},
            cause=e
        ))


if __name__ == "__main__":
    """Command-line interface matching our existing pipeline scripts."""

    if len(sys.argv) != 4:
        print(f"Usage: python {sys.argv[0]} <input_md> <bib_file> <output_md>")
        print("Example: python bibliography_stage.py input.md references.bib output.md")
        sys.exit(1)

    input_md = Path(sys.argv[1])
    bib_file = Path(sys.argv[2])
    output_md = Path(sys.argv[3])

    result = process_bibliography_stage(input_md, bib_file, output_md)

    if result.is_err:
        error = result.unwrap_err()
        print(f"❌ {error.message}", file=sys.stderr)
        sys.exit(1)

    print(f"Successfully processed bibliography citations.")
