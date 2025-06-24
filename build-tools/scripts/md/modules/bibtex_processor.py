# modules/bibtex_processor.py
"""
Functional BibTeX citation processor for the documentation pipeline.

This module provides pure, mathematical transformations for:
- Parsing BibTeX files into immutable data structures
- Generating alpha-style citation labels ([DeM98], [SL19], etc.)
- Converting LaTeX citations to Markdown format
- Building bibliography sections

Design principles:
- Pure functions with no side effects
- Immutable data structures everywhere
- Functional error handling with Result types
- Mathematical composition of transformations
"""

from __future__ import annotations
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List, Tuple, Set, Optional, Pattern
import re
import json
import sys
from functools import reduce

# Add current directory to Python path for imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

# Import our mathematical foundation
from utils.pipeline_types import (
    Result, PipelineError, ErrorType, BibEntry, CitationReplacement
)

# Try to import pybtex for robust .bib parsing
try:
    from pybtex.database import parse_file, BibliographyData, Entry
    from pybtex.database.input import bibtex
    HAS_PYBTEX = True
except ImportError:
    HAS_PYBTEX = False


# =============================================================================
# Immutable Configuration
# =============================================================================

@dataclass(frozen=True)
class CitationStyle:
    """Immutable citation style configuration."""

    name: str
    link_citations: bool = True
    sort_bibliography: bool = True
    max_authors_in_label: int = 3

    @classmethod
    def alpha(cls) -> CitationStyle:
        """Alpha style: [DeM98], [SL19], etc."""
        return cls(name="alpha", link_citations=True, sort_bibliography=True)

    @classmethod
    def numeric(cls) -> CitationStyle:
        """Numeric style: [1], [2], etc."""
        return cls(name="numeric", link_citations=True, sort_bibliography=True)


@dataclass(frozen=True)
class BibliographyConfig:
    """Immutable configuration for bibliography processing."""

    style: CitationStyle
    bibliography_title: str = "References"
    bibliography_id: str = "references"
    citation_prefix: str = ""
    citation_suffix: str = ""
    output_format: str = "markdown"  # NEW: "markdown" or "latex"

    @classmethod
    def default_alpha(cls) -> BibliographyConfig:
        """Default configuration with alpha-style citations."""
        return cls(
            style=CitationStyle.alpha(),
            bibliography_title="References",
            bibliography_id="references",
            output_format="markdown"
        )

    @classmethod
    def latex_alpha(cls) -> BibliographyConfig:
        """Configuration for LaTeX output with alpha-style citations."""
        return cls(
            style=CitationStyle.alpha(),
            bibliography_title="References",
            bibliography_id="references",
            output_format="latex"
        )

# =============================================================================
# Citation Pattern Recognition
# =============================================================================

# Compiled regex patterns for performance
TEXTCITE_PATTERN = re.compile(
    r'\\textcite(?:\[([^\]]*)\])?\{([^}]+)\}',
    re.IGNORECASE
)

CITE_PATTERN = re.compile(
    r'\\cite(?:\[([^\]]*)\])?\{([^}]+)\}',
    re.IGNORECASE
)

CITEP_PATTERN = re.compile(
    r'\\citep(?:\[([^\]]*)\])?\{([^}]+)\}',
    re.IGNORECASE
)

ALL_CITATION_PATTERNS = [TEXTCITE_PATTERN, CITE_PATTERN, CITEP_PATTERN]


# =============================================================================
# Pure Bibliography Entry Processing
# =============================================================================

def normalize_author_name(author: str) -> str:
    """
    Pure function: Extract last name from author string.

    Examples:
        "John Doe" → "Doe"
        "von Neumann, John" → "Neumann"
        "Jean-Pierre Dupont" → "Dupont"
    """
    # Handle "Last, First" format
    if ',' in author:
        last_name = author.split(',')[0].strip()
    else:
        # Handle "First Last" format
        parts = author.strip().split()
        last_name = parts[-1] if parts else author

    # Remove common prefixes (von, van, de, etc.)
    prefixes = {'von', 'van', 'de', 'del', 'da', 'der', 'den', 'le', 'la'}
    words = last_name.split()

    # Find first word that's not a prefix
    for word in words:
        if word.lower() not in prefixes:
            return word.capitalize()

    # Fallback: return the last word
    return words[-1].capitalize() if words else last_name


def extract_author_initials(authors: str, max_authors: int = 3) -> str:
    """
    Pure function: Extract author initials for alpha-style labels.

    Examples:
        "John Doe" → "Doe"
        "John Doe and Jane Smith" → "DS"
        "A and B and C and D" → "ABC+"
    """
    # Split on "and" and clean up
    author_list = [a.strip() for a in re.split(r'\s+and\s+', authors, flags=re.IGNORECASE)]

    if len(author_list) == 1:
        return normalize_author_name(author_list[0])
    elif len(author_list) <= max_authors:
        initials = [normalize_author_name(author)[0] for author in author_list]
        return ''.join(initials)
    else:
        # Too many authors: take first few + "+"
        initials = [normalize_author_name(author)[0] for author in author_list[:max_authors]]
        return ''.join(initials) + '+'


def generate_alpha_label(entry: BibEntry) -> str:
    """
    Pure function: Generate alpha-style citation label.

    Examples:
        DeMeo et al, 1998 → "DeM98"
        Smith & Jones, 2023 → "SJ23"
        Single author, 2020 → "Author20"
    """
    author = entry.get_field("author", "Unknown")
    year = entry.get_field("year", "")

    # Extract author part
    author_part = extract_author_initials(author)

    # Extract year part (last 2 digits)
    year_part = year[-2:] if len(year) >= 2 else year

    return f"{author_part}{year_part}"


def create_bib_entry_from_pybtex(key: str, entry: Entry) -> BibEntry:
    """Pure function: Convert pybtex Entry to our immutable BibEntry."""

    # Convert pybtex fields to our format
    fields = {}
    for field_key, field_value in entry.fields.items():
        # Convert pybtex rich text to plain string
        fields[field_key.lower()] = str(field_value)

    # Handle authors specially
    if entry.persons:
        author_strings = []
        for person_list in entry.persons.values():
            for person in person_list:
                # Convert pybtex Person to string
                author_strings.append(str(person))
        fields["author"] = " and ".join(author_strings)

    # Handle different pybtex versions - try different attribute names for entry type
    entry_type = _extract_entry_type(entry)

    bib_entry = BibEntry(
        key=key,
        entry_type=entry_type,
        fields=fields
    )

    # Generate alpha label
    alpha_label = generate_alpha_label(bib_entry)

    return BibEntry(
        key=key,
        entry_type=entry_type,
        fields=fields,
        short_label=alpha_label
    )


def _extract_entry_type(entry: Entry) -> str:
    """
    Pure function: Extract entry type from pybtex Entry, handling version differences.

    Different pybtex versions use different attribute names:
    - Some use entry.type_
    - Some use entry.type
    - Some use entry.entry_type
    """
    # Try different possible attribute names
    for attr_name in ['type_', 'type', 'entry_type']:
        if hasattr(entry, attr_name):
            attr_value = getattr(entry, attr_name)
            if attr_value:
                return str(attr_value).lower()

    # Fallback to 'misc' if we can't determine the type
    return 'misc'


# =============================================================================
# BibTeX File Parsing
# =============================================================================

def parse_bibtex_file(bib_path: Path) -> Result[Dict[str, BibEntry], PipelineError]:
    """
    Pure function: Parse .bib file into immutable bibliography entries.

    Uses pybtex for robust parsing if available, falls back to simple parser.
    """

    if not bib_path.exists():
        return Result.err(PipelineError(
            error_type=ErrorType.FILE_NOT_FOUND,
            message=f"Bibliography file not found: {bib_path}",
            context={"file_path": str(bib_path)}
        ))

    try:
        if HAS_PYBTEX:
            return _parse_with_pybtex(bib_path)
        else:
            return _parse_with_simple_parser(bib_path)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.BIBTEX_ERROR,
            message=f"Failed to parse BibTeX file: {e}",
            context={"file_path": str(bib_path)},
            cause=e
        ))


def _parse_with_pybtex(bib_path: Path) -> Result[Dict[str, BibEntry], PipelineError]:
    """Parse using robust pybtex library."""

    try:
        bib_data = parse_file(str(bib_path))
        entries = {}

        for key, entry in bib_data.entries.items():
            entries[key] = create_bib_entry_from_pybtex(key, entry)

        return Result.ok(entries)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.BIBTEX_ERROR,
            message=f"pybtex parsing failed: {e}",
            context={"parser": "pybtex"},
            cause=e
        ))


def _parse_with_simple_parser(bib_path: Path) -> Result[Dict[str, BibEntry], PipelineError]:
    """Fallback simple parser (basic functionality)."""

    try:
        content = bib_path.read_text(encoding='utf-8')
        entries = {}

        # Very basic regex-based parsing
        entry_pattern = re.compile(
            r'@(\w+)\s*\{\s*([^,\s]+)\s*,\s*(.*?)\n\}',
            re.DOTALL | re.IGNORECASE
        )

        for match in entry_pattern.finditer(content):
            entry_type = match.group(1).lower()
            key = match.group(2)
            fields_text = match.group(3)

            # Parse fields (very basic)
            fields = {}
            field_pattern = re.compile(r'(\w+)\s*=\s*[{"]([^}"]*)[}"]')

            for field_match in field_pattern.finditer(fields_text):
                field_name = field_match.group(1).lower()
                field_value = field_match.group(2)
                fields[field_name] = field_value

            bib_entry = BibEntry(
                key=key,
                entry_type=entry_type,
                fields=fields
            )

            # Generate alpha label
            alpha_label = generate_alpha_label(bib_entry)
            entries[key] = BibEntry(
                key=key,
                entry_type=entry_type,
                fields=fields,
                short_label=alpha_label
            )

        return Result.ok(entries)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.BIBTEX_ERROR,
            message=f"Simple parser failed: {e}",
            context={"parser": "simple"},
            cause=e
        ))


# =============================================================================
# Citation Detection and Replacement
# =============================================================================

def find_citations_in_content(content: str) -> List[Tuple[int, int, str, List[str], Optional[str]]]:
    """
    Pure function: Find all citations in LaTeX content.

    Returns list of (start, end, command, keys, optional_args) tuples.
    """
    citations = []

    for pattern in ALL_CITATION_PATTERNS:
        for match in pattern.finditer(content):
            start, end = match.span()
            command = match.group(0).split('{')[0].lstrip('\\')  # Extract command name
            optional_args = match.group(1) if match.lastindex >= 1 else None
            keys_str = match.group(2) if match.lastindex >= 2 else ""

            # Split comma-separated keys
            keys = [k.strip() for k in keys_str.split(',') if k.strip()]

            citations.append((start, end, command, keys, optional_args))

    # Sort by position to process from end to beginning (for safe replacement)
    return sorted(citations, key=lambda x: x[0], reverse=True)


def create_markdown_citation(
    keys: List[str],
    bibliography: Dict[str, BibEntry],
    config: BibliographyConfig,
    optional_args: Optional[str] = None
) -> str:
    """
    Create citation from reference keys in specified output format.

    Supports both markdown and LaTeX output formats.
    """

    if not keys:
        return "[?]"

    if config.style.name == "alpha":
        labels = []
        for key in keys:
            entry = bibliography.get(key)
            if entry and entry.short_label:
                label = entry.short_label
                if config.style.link_citations:
                    if config.output_format == "latex":
                        # Generate LaTeX hyperlink
                        label = f"\\href{{#{config.bibliography_id}#{key}}}{{{label}}}"
                    else:
                        # Generate markdown link
                        label = f"[{label}](#{config.bibliography_id}#{key})"
                else:
                    label = f"[{label}]"
                labels.append(label)
            else:
                # Missing reference
                labels.append(f"[{key}?]")

        if len(labels) == 1:
            citation = labels[0]
        else:
            # Multiple citations
            if config.output_format == "latex":
                # For LaTeX: separate multiple citations with commas
                citation = ", ".join(labels)
            else:
                # For markdown: [AB20; CD21] format
                citation = f"[{'; '.join([l.strip('[]') for l in labels])}]"
                if config.style.link_citations:
                    citation = f"[{citation}](#{config.bibliography_id})"

    else:  # numeric or other styles
        citation = f"[{', '.join(keys)}]"
        if config.style.link_citations:
            if config.output_format == "latex":
                citation = f"\\href{{#{config.bibliography_id}}}{{{citation}}}"
            else:
                citation = f"[{citation}](#{config.bibliography_id})"

    # Add optional arguments if present
    if optional_args:
        clean_args = optional_args.strip('[]')
        citation = f"{citation}, {clean_args}"

    return citation


def replace_citations_in_content(
    content: str,
    bibliography: Dict[str, BibEntry],
    config: BibliographyConfig
) -> Tuple[str, List[CitationReplacement]]:
    """
    Pure function: Replace all LaTeX citations with Markdown format.

    Returns (new_content, list_of_replacements).
    """

    citations = find_citations_in_content(content)
    replacements = []
    new_content = content

    # Process citations from end to beginning to preserve positions
    for start, end, command, keys, optional_args in citations:
        original_latex = content[start:end]

        markdown_replacement = create_markdown_citation(
            keys, bibliography, config, optional_args
        )

        replacement = CitationReplacement(
            original_latex=original_latex,
            markdown_replacement=markdown_replacement,
            referenced_keys=tuple(keys),
            citation_style=config.style.name
        )

        replacements.append(replacement)

        # Replace in content
        new_content = new_content[:start] + markdown_replacement + new_content[end:]

    # Reverse replacements list to match original document order
    replacements.reverse()

    return new_content, replacements


# =============================================================================
# Bibliography Generation
# =============================================================================

def generate_bibliography_markdown(
    used_keys: Set[str],
    bibliography: Dict[str, BibEntry],
    config: BibliographyConfig
) -> str:
    """
    Generate bibliography section in specified output format.
    """

    if not used_keys:
        return ""

    # Filter and sort entries (same logic as before)
    used_entries = [bibliography[key] for key in used_keys if key in bibliography]

    if config.style.sort_bibliography:
        if config.style.name == "alpha":
            used_entries.sort(key=lambda e: e.short_label)
        else:
            used_entries.sort(key=lambda e: e.key)

    # Generate section header and entries based on format
    if config.output_format == "latex":
        lines = [
            f"\\section{{{config.bibliography_title}}}\\label{{{config.bibliography_id}}}",
            ""
        ]

        for entry in used_entries:
            if config.style.name == "alpha":
                label = f"\\textbf{{{entry.short_label}}} \\label{{{entry.key}}}"
            else:
                label = f"\\textbf{{{entry.key}}} \\label{{{entry.key}}}"

            citation_text = format_bibliography_entry(entry)
            lines.append(f"{label} {citation_text}")
            lines.append("")

    else:  # markdown format
        lines = [
            f"## {config.bibliography_title} {{#{config.bibliography_id}}}",
            ""
        ]

        for entry in used_entries:
            if config.style.name == "alpha":
                label = f"**[{entry.short_label}]** {{#{entry.key}}}"
            else:
                label = f"**[{entry.key}]** {{#{entry.key}}}"

            citation_text = format_bibliography_entry(entry)
            lines.append(f"{label} {citation_text}")
            lines.append("")

    return "\n".join(lines)


def format_bibliography_entry(entry: BibEntry) -> str:
    """Pure function: Format a single bibliography entry."""

    # Basic formatting - can be enhanced
    author = entry.get_field("author", "Unknown Author")
    title = entry.get_field("title", "Untitled")
    year = entry.get_field("year", "")

    if entry.entry_type == "article":
        journal = entry.get_field("journal", "")
        if journal:
            return f"{author}. {title}. *{journal}*, {year}."
        else:
            return f"{author}. {title}. {year}."

    elif entry.entry_type in ["book", "misc"]:
        publisher = entry.get_field("publisher", "")
        if publisher:
            return f"{author}. *{title}*. {publisher}, {year}."
        else:
            return f"{author}. *{title}*. {year}."

    else:
        # Generic format
        return f"{author}. {title}. {year}."


# =============================================================================
# Main BibTeX Processor Class
# =============================================================================

@dataclass(frozen=True)
class BibTeXProcessor:
    """
    Immutable BibTeX processor with functional interface.

    This is a mathematical object that transforms content by:
    1. Parsing bibliography entries
    2. Finding and replacing citations
    3. Generating bibliography sections

    All operations are pure functions with no side effects.
    """

    bibliography: Dict[str, BibEntry]
    config: BibliographyConfig

    @classmethod
    def from_file(
        cls,
        bib_path: Path,
        config: Optional[BibliographyConfig] = None
    ) -> Result[BibTeXProcessor, PipelineError]:
        """
        Pure constructor: Create processor from .bib file.

        This is a pure function that returns Result for error handling.
        """

        if config is None:
            config = BibliographyConfig.default_alpha()

        return (parse_bibtex_file(bib_path)
                .map(lambda bib: cls(bibliography=bib, config=config)))

    def process_content(self, content: str) -> Tuple[str, List[CitationReplacement], str]:
        """
        Pure function: Process content and return results.

        Returns:
            (processed_content, replacements, bibliography_section)
        """

        # Replace citations in content
        new_content, replacements = replace_citations_in_content(
            content, self.bibliography, self.config
        )

        # Collect used keys
        used_keys = set()
        for replacement in replacements:
            used_keys.update(replacement.referenced_keys)

        # Generate bibliography
        bibliography_section = generate_bibliography_markdown(
            used_keys, self.bibliography, self.config
        )

        return new_content, replacements, bibliography_section

    def get_entry(self, key: str) -> Optional[BibEntry]:
        """Pure function: Get bibliography entry by key."""
        return self.bibliography.get(key)

    def get_statistics(self) -> Dict[str, int]:
        """Pure function: Get bibliography statistics."""
        return {
            "total_entries": len(self.bibliography),
            "entry_types": len(set(entry.entry_type for entry in self.bibliography.values())),
            "has_alpha_labels": sum(1 for entry in self.bibliography.values() if entry.short_label)
        }


# =============================================================================
# Testing and Examples
# =============================================================================

if __name__ == "__main__":
    # Example usage and testing

    print("🔬 Testing BibTeX Processor...")

    # Test alpha label generation
    test_entry = BibEntry(
        key="demeo1998",
        entry_type="article",
        fields={
            "author": "William DeMeo and Jane Smith",
            "title": "A Mathematical Approach",
            "year": "1998"
        }
    )

    label = generate_alpha_label(test_entry)
    print(f"Alpha label for DeMeo & Smith 1998: {label}")  # Should be "DS98"

    # Test citation replacement
    test_content = r"""
    This is described in \cite{shelley-ledger-spec} and
    further detailed in \textcite[Section 4]{conway-ledger-spec}.
    Multiple references: \cite{paper1,paper2,paper3}.
    """

    # Mock bibliography
    mock_bib = {
        "shelley-ledger-spec": BibEntry(
            key="shelley-ledger-spec",
            entry_type="misc",
            fields={"author": "Shelley Team", "year": "2019", "title": "Shelley Ledger Spec"},
            short_label="SL19"
        ),
        "conway-ledger-spec": BibEntry(
            key="conway-ledger-spec",
            entry_type="misc",
            fields={"author": "Conway Team", "year": "2023", "title": "Conway Ledger Spec"},
            short_label="CL23"
        )
    }

    config = BibliographyConfig.default_alpha()
    new_content, replacements = replace_citations_in_content(test_content, mock_bib, config)

    print(f"\nOriginal content:\n{test_content}")
    print(f"\nProcessed content:\n{new_content}")
    print(f"\nReplacements made: {len(replacements)}")

    for repl in replacements:
        print(f"  {repl.original_latex} → {repl.markdown_replacement}")

    print("\n✅ BibTeX Processor tests completed!")
