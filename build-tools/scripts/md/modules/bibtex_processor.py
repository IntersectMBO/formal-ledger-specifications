# modules/bibtex_processor.py
"""
Functional BibTeX citation processor for the documentation pipeline.

This module provides pure, mathematical transformations for:
- Parsing BibTeX files into immutable data structures
- Generating alpha-style citation labels (e.g., [DeM98], [SL19], etc.)
- Converting LaTeX citations to Markdown format
- Building bibliography sections
"""

from __future__ import annotations
from dataclasses import dataclass, field, replace
from pathlib import Path
from typing import Dict, List, Tuple, Set, Optional, Pattern
import re
import sys
from functools import reduce

# Add current directory to Python path for imports
current_dir = Path(__file__).parent.parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))

# Import our mathematical foundation
from utils.pipeline_types import Result, PipelineError, ErrorType

# Try to import pybtex for robust .bib parsing
try:
    from pybtex.database import parse_file, BibliographyData, Entry # type: ignore[import-error]
    from pybtex.database.input import bibtex # type: ignore[import-error]
    from pybtex.backends.plaintext import Backend as PlaintextBackend
    HAS_PYBTEX = True
except ImportError:
    HAS_PYBTEX = False


# =============================================================================
# Immutable Configuration
# =============================================================================

@dataclass(frozen=True)
class BibEntry:
    """Immutable representation of a bibliography entry."""

    key: str
    entry_type: str  # article, book, inproceedings, etc.
    fields: Dict[str, str]
    short_label: str = ""  # e.g., "DeM98" for alpha style

    def get_field(self, field_name: str, default: str = "") -> str:
        """Get field value with default."""
        return self.fields.get(field_name.lower(), default)

    @property
    def title(self) -> str:
        return self.get_field("title")

    @property
    def author(self) -> str:
        return self.get_field("author")

    @property
    def year(self) -> str:
        return self.get_field("year")

    def update(self, **changes) -> 'BibEntry':
        return replace(self, **changes)

@dataclass(frozen=True)
class CitationReplacement:
    """Immutable representation of a citation replacement operation."""

    original_latex: str
    markdown_replacement: str
    referenced_keys: Tuple[str, ...]
    citation_style: str = "alpha"

    @property
    def references_count(self) -> int:
        """Number of references in this citation."""
        return len(self.referenced_keys)



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
PARENCITE_PATTERN = re.compile(
    r'\\parencite(?:\[([^\]]*)\])?\{([^}]+)\}',
    re.IGNORECASE
)

ALL_CITATION_PATTERNS = [TEXTCITE_PATTERN, CITE_PATTERN, CITEP_PATTERN, PARENCITE_PATTERN]


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
    backend = PlaintextBackend() # to render LaTeX macros to unicode
    author = entry.get_field("author", "Unknown")
    year = entry.get_field("year", "")
    author_part = extract_author_initials(author)
    # get last 2 digits of year
    year_part = year[-2:] if len(year) >= 2 else year
    return f"{author_part}{year_part}"


def create_bib_entry_from_pybtex(key: str, entry: Entry) -> BibEntry:
    """Pure function: Convert pybtex Entry to our immutable BibEntry."""
    backend = PlaintextBackend()

    # Convert pybtex fields to our format
    fields = {
        k.lower(): v.render(backend) if hasattr(v, 'render') else str(v)
        for k, v in entry.fields.items()
    }

    # Use a generator expression to format author names
    if entry.persons:
        def format_person(person):
            """Helper to format a single person object."""
            first = ' '.join(part.render(backend) for part in person.rich_first_names)
            middle = ' '.join(part.render(backend) for part in person.rich_middle_names)
            last = ' '.join(part.render(backend) for part in person.rich_last_names)
            return ' '.join(filter(None, [first, middle, last]))

        all_persons = (p for p_list in entry.persons.values() for p in p_list)
        author_string = " and ".join(format_person(p) for p in all_persons)
        fields["author"] = author_string

    # initial BibEntry without short_label
    bib_entry_initial = BibEntry(
        key=key,
        entry_type=_extract_entry_type(entry),
        fields=fields
    )

    return bib_entry_initial.update(short_label=generate_alpha_label(bib_entry_initial))



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
        bib_data = parse_file(str(bib_path)) # type: ignore[call-arg]
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
            optional_args = match.group(1) if (match.lastindex is not None and match.lastindex >= 1) else None
            keys_str = match.group(2) if (match.lastindex is not None and match.lastindex >= 2) else ""

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

    # Combine optional args into a single string to be appended inside the brackets
    extra_info = f", {optional_args.strip()}" if optional_args else ""

    if config.style.name == "alpha":
        labels = []
        for key in keys:
            entry = bibliography.get(key)
            if entry and entry.short_label:
                # Append extra_info only to the last label in a multi-citation
                label_text = entry.short_label
                if key == keys[-1]: # Apply to the last one
                    label_text += extra_info

                if config.style.link_citations:
                    if config.output_format == "latex":
                        # Generate LaTeX hyperlink
                        # The LaTeX link should also point directly to the key.
                        label = f"\\href{{#{key}}}{{{label_text}}}"
                    else:
                        # Generate markdown link
                        # The link should point directly to the anchor, which is just the key.
                        label = f"[{label_text}](#{key})"
                else:
                    label = label_text # No brackets if not linking, text will be bracketed later
                labels.append(label)
            else:
                labels.append(f"[{key}?]") # Missing reference

        if len(labels) == 1:
            # For a single citation, the format is [Label, extra]; we need to strip
            # outer brackets from the generated label to add them back correctly.
            single_label_content = labels[0]
            if config.output_format == "latex":
                # The href already contains the full text, so just return it.
                return single_label_content
            else: # Markdown
                # Re-construct to ensure proper formatting like "[SL19, Section 6.5]"
                entry = bibliography.get(keys[0])
                label_text = f"{entry.short_label}{extra_info}" if entry else f"{keys[0]}?{extra_info}"
                if config.style.link_citations:
                    return f"[{label_text}](#{config.bibliography_id}#{keys[0]})"
                else:
                    return f"[{label_text}]"
        else: # Multiple citations
             # For LaTeX, just join them. For Markdown, group them like [SL19; CL23, Sec 5]
            if config.output_format == "latex":
                return ", ".join(labels)
            else:
                # For Markdown multi-cite, the extra info is appended to the last one.
                base_labels = [
                    f"[{bibliography[k].short_label}]" if k in bibliography and bibliography[k].short_label else f"[{k}?]"
                    for k in keys
                ]
                # This is a simplification; a truly robust multi-citation with optional args
                # would require a more complex structure. For now, we append to the whole group.
                multi_label_text = "; ".join(l.strip("[]") for l in base_labels)
                # Point to the anchor of the *first* citation in the list as a sensible default.
                first_key = keys[0] if keys else ""
                return f"[{multi_label_text}{extra_info}](#{first_key})"

    else:  # numeric or other styles
        label_text = f"{', '.join(keys)}{extra_info}"
        citation = f"[{label_text}]"
        if config.style.link_citations:
            if config.output_format == "latex":
                return f"\\href{{#{config.bibliography_id}}}{{{label_text}}}"
            else:
                return f"[{citation}](#{config.bibliography_id})"

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
    Generates a bibliography section in pure Markdown format.
    """
    if not used_keys:
        return ""

    used_entries = [bibliography[key] for key in used_keys if key in bibliography]

    if config.style.sort_bibliography:
        if config.style.name == "alpha":
            used_entries.sort(key=lambda e: e.short_label)
        else:
            used_entries.sort(key=lambda e: e.key)

    # This function now only generates Markdown. The old "if/else" for LaTeX is removed.
    lines = []
    for entry in used_entries:
        # FIX 1: Use a standard HTML span for the anchor. This is more robust
        # than the Pandoc-specific {#...} syntax.
        label = f'<span id="{entry.key}"></span>**[{entry.short_label}]**'

        # FIX 2: Explicitly request "markdown" output format to get correct italics.
        citation_text = format_bibliography_entry(entry, output_format="markdown")

        lines.append(f"{label} {citation_text}")
        lines.append("")

    return "\n".join(lines)

def format_bibliography_entry(entry: BibEntry, output_format: str = "md") -> str:
    """
    Formats a single bibliography entry for either Markdown or LaTeX output.
    """
    # Basic formatting (could be enhanced later)
    author = entry.get_field("author", "Unknown Author")
    title = entry.get_field("title", "Untitled")
    year = entry.get_field("year", "")

    def italicize(text):
        return f"\\textit{{{text}}}" if output_format == "latex" else f"*{text}*"

    if entry.entry_type == "article":
        journal = entry.get_field("journal", "")
        return f"{author}. {title}. \\textit{{{journal}}}, {year}." if journal else f"{author}. {title}. {year}."
    elif entry.entry_type in ["book", "misc"]:
        publisher = entry.get_field("publisher", "")
        return f"{author}. {italicize(title)}. {publisher}, {year}." if publisher else f"{author}. {italicize(title)}. {year}."
    else: # Generic format
        return f"{author}. {title}. {year}."


def generate_global_bibliography_page(
    all_used_keys: Set[str],
    processor: BibTeXProcessor,
    output_path: Path
) -> Result[None, PipelineError]:
    """
    Generates a single Markdown page containing all cited references.
    """
    try:
        # Use the existing markdown generator with the complete set of keys
        markdown_content = generate_bibliography_markdown(
            all_used_keys,
            processor.bibliography,
            processor.config
        )

        # Prepend a title for the standalone page
        final_content = f"# References\n\n{markdown_content}"

        output_path.parent.mkdir(parents=True, exist_ok=True)
        output_path.write_text(final_content, 'utf-8')
        logging.info(f"✅ Global bibliography generated at: {output_path}")
        return Result.ok(None)

    except Exception as e:
        return Result.err(PipelineError(
            error_type=ErrorType.COMMAND_FAILED,
            message=f"Failed to generate global bibliography page: {e}",
            cause=e
        ))


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
