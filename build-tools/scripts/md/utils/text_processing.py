# build-tools/scripts/md/utils/text_processing.py
"""
Pure text processing utilities for the documentation pipeline.
"""
import re
from pathlib import Path
from typing import Optional, Dict

def slugify(text_to_slug: Optional[str]) -> str:
    """Generates a slug from text, similar to Python-Markdown's default."""
    if not text_to_slug: return "section"
    slug = str(text_to_slug).lower()
    slug = re.sub(r'[^\w\s-]', '', slug).strip()
    slug = re.sub(r'[-\s]+', '-', slug)
    return slug or "section"

def replace_code_placeholder(match: re.Match, code_blocks: Dict) -> str:
    """Replaces a '@@CODEBLOCK_ID_n@@' placeholder with its code content."""
    placeholder_id = match.group(0)
    block_data = code_blocks.get(placeholder_id, {})
    content = block_data.get("content", "").rstrip() + '\n'
    if block_data.get("hidden", False):
        return f'\n<!--\n```agda\n{content}```\n-->\n'
    else:
        return f"\n```agda\n{content}```\n"

def replace_figure_placeholder(match: re.Match) -> str:
    """
    Replaces a figure or caption placeholder with a Markdown H3 heading.
    This function handles both labeled and unlabelled figure placeholders.
    """
    # If the regex had 2 capture groups, it's the labeled figure pattern.
    # If it had 1, it's the unlabelled one.
    if match.re.groups == 2:
        placeholder_caption = match.group(2)  # Caption is the second group
    else:
        placeholder_caption = match.group(1)  # Caption is the first group

    # Perform the necessary replacements
    cleaned_caption = placeholder_caption.replace("@ @", "@@")
    final_caption_text = cleaned_caption.replace("-", " ")
    caption_text_squashed = re.sub(r'\s+', ' ', final_caption_text).strip()

    return f"\n### {caption_text_squashed}\n\n"

def replace_cross_ref_placeholder(match: re.Match, label_map: Dict) -> str:
    """Replaces a '@@CROSS_REF@@...' placeholder with a Markdown link."""
    command_name = match.group(1)
    targets_str = match.group(2).replace("@ @", "@@")
    labels = [t.strip() for t in targets_str.split(',') if t.strip()]

    link_parts = []
    for i, label_id in enumerate(labels):
        target_info = label_map.get(label_id)
        if target_info:
            caption = target_info.get("caption_text", label_id)
            target_file = target_info.get("file", "")
            anchor = target_info.get("anchor", "")
            #prefix = "Figure" if label_id.startswith("fig:") else "Section"

            link_text = f"{caption}"
            if target_file and anchor:
                link_parts.append(f"[{link_text}]({target_file}{anchor})")
            else:
                link_parts.append(f"*{link_text} (link generation error)*")
        else:
            link_parts.append(f"*'{label_id}' (unresolved reference)*")

    return " and ".join(link_parts)

def process_admonitions(content: str) -> str:
    """Converts '@@ADMONITION_START/END@@' markers to MkDocs admonition blocks."""
    output_lines, in_admonition = [], False

    # --- backslash is optional in the regex: `\\?|` ---
    admonition_start = re.compile(r'^\s*@@ADMONITION_START\\?\|(.*?)\s*@@\s*$')
    admonition_end = re.compile(r'^\s*@@ADMONITION_END@@\s*$')

    for line in content.splitlines():
        start_match = admonition_start.match(line)
        if start_match:
            title = start_match.group(1).strip() or "Conway specifics"
            output_lines.append(f'\n??? note "{title}"')
            in_admonition = True
        elif admonition_end.match(line) and in_admonition:
            in_admonition = False
        elif in_admonition:
            output_lines.append(f"    {line}")
        else:
            output_lines.append(line)

    return "\n".join(output_lines) + "\n"

def get_flat_filename(relative_path: Path) -> str:
    """
    Calculates the flat 'ModuleName.md' filename from a relative path,
    correctly handling index files and double extensions.
    """
    # Use the full name and manually strip known extensions for robustness
    name = relative_path.name
    if name.endswith(".lagda.md"):
        stem = name[:-len(".lagda.md")]
    elif name.endswith(".lagda"):
        stem = name[:-len(".lagda")]
    else:
        stem = relative_path.stem

    parts = list(relative_path.parent.parts)
    is_index = stem.lower() == "index"

    if not parts and is_index:
        flat_name = "index"
    elif not parts:
        flat_name = stem
    else:
        if not is_index:
            parts.append(stem)
        flat_name = ".".join(parts)

    return f"{flat_name}.md"

