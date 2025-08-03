# modules/latex_preprocessor.py
"""
Functional preprocessor for literate Agda LaTeX files.

This module contains a pure function for transforming LaTeX source content,
extracting code blocks, and preparing it for the main LaTeX-to-Markdown pipeline.
"""
from __future__ import annotations
import re
from typing import Dict, Tuple, Callable, Any, OrderedDict as OrderedDictType
from collections import OrderedDict

# =============================================================================
# Pure Helper Functions (Callbacks for re.sub)
# =============================================================================

def _process_theorem_like_environment(kind: str):
    def _inner(match: re.Match) -> str:
        title = match.group(1) or kind.capitalize()
        content = match.group(2)

        # Normalize whitespace and line continuation backslashes
        #content = content.lstrip("\\").strip()

        label_match = re.search(r"\\label\{(.*?)\}", content)
        label = label_match.group(1) if label_match else ""
        body = re.sub(r"\\label\{.*?\}", "", content).strip()

        label_part = f"label={label}@@title={title}" if label else f"title={title}"
        return f"\n@@{kind.upper()}_BLOCK@@{label_part}@@\n{body}\n"
    return _inner

def get_module_repo_path(module_type: str, module_name: str) -> Tuple[str, str]:
    """Returns (path, display_text) for use in _replace_modulenote."""
    if module_type == "Conway":
        agda_module = f"Ledger.Conway.Specification.{module_name}"
        path = f"Ledger/Conway/Specification/{module_name}.lagda"
    else:
        agda_module = f"Ledger.{module_name}"
        path = f"Ledger/{module_name}.lagda"
    return path, agda_module

def _replace_modulenote(match: re.Match) -> str:
    """Generates a sentence with a link to a specific Agda module on GitHub."""
    repo_url = "https://github.com/IntersectMBO/formal-ledger-specifications"
    repo_src_base = "blob/master/src/Ledger"

    module_type, module_name = match.group(1), match.group(2)
    base_path = f"Ledger/{module_type}" if module_type == "Conway" else "Ledger"
    module_text = f"{base_path.replace('/', '.')}.{module_name}"

    #module_url = f"{repo_url}/blob/master/src/{base_path}/{module_name}.lagda"
    #module_link = f"\\href{{{module_url}}}{{\\texttt{{{module_text}}}}}"
    # Now using helper function get_module_repo_path instead:
    path, agda_module = get_module_repo_path(module_type, module_name)
    module_url = f"{repo_url}/blob/master/src/{path}"
    module_link = f"\\href{{{module_url}}}{{\\texttt{{{agda_module}}}}}"

    repo_link = f"\\href{{{repo_url}}}{{formal ledger specification}}"

    return f"This section is part of the {module_link} module of the {repo_link}"

def _replace_cip_href(match: re.Match) -> str:
    cip_number = match.group(1).zfill(4)
    cip_url = f"https://cips.cardano.org/cip-{cip_number}"
    return f"\\href{{{cip_url}}}{{CIP-{cip_number}}}"

def _replace_cref_commands(match: re.Match) -> str:
    """Replaces \Cref{...} and \cref{...} with a CROSS_REF placeholder."""
    command_name, targets_str = match.group(1), match.group(2)
    return f"@@CROSS_REF@@command={command_name}@@targets={targets_str.replace('@@', '@ @')}@@"

def _process_figure_environment(match: re.Match) -> str:
    """Extracts caption and label from a figure environment, returning a placeholder."""
    figure_inner_content = match.group(2)
    caption_text = "Untitled Section"
    label_id = ""

    caption_match = re.search(r"\\caption\{(.*?)\}", figure_inner_content, flags=re.DOTALL)
    if caption_match:
        raw_caption = caption_match.group(1).strip()
        temp_caption_text = re.sub(r'\s+', ' ', raw_caption.replace("\n", " ")).strip()
        caption_text = temp_caption_text.replace(" ", "-").replace("@@", "@ @")
        figure_inner_content = figure_inner_content.replace(caption_match.group(0), "", 1)

    label_match = re.search(r"\\label\{(.*?)\}", figure_inner_content)
    if label_match:
        label_id = label_match.group(1).strip().replace("@@", "@ @")
        figure_inner_content = figure_inner_content.replace(label_match.group(0), "", 1)

    content = re.sub(r"\\begin\{AgdaMultiCode\}|\\end\{AgdaMultiCode\}", "", figure_inner_content).strip()

    placeholder = (f"\n@@FIGURE_BLOCK_TO_SUBSECTION@@label={label_id}@@caption={caption_text}@@\n"
                   if label_id else f"\n@@UNLABELLED_FIGURE_CAPTION@@caption={caption_text}@@\n")

    return placeholder + content

def _expand_agda_term_from_json(match: re.Match, macro_definitions: Dict) -> str:
    """Callback to replace a macro from macros.json with an AgdaTerm placeholder."""
    macro_name = match.group(1)
    term_info = macro_definitions.get("agda_terms", {}).get(macro_name)
    if term_info:
        basename = term_info.get("basename", macro_name)
        agda_class = term_info.get("agda_class", "AgdaUnknown")
        return f"\\texttt{{@@AgdaTerm@@basename={basename}@@class={agda_class}@@}}"
    return match.group(0) # Return original if not found

# =============================================================================
# Main Transformation Function
# =============================================================================

def process_latex_content(content: str, macro_definitions: Dict) -> Tuple[str, Dict[str, Dict]]:
    """
    Takes raw LaTeX content and returns processed content and extracted code blocks.
    This is a pure function that encapsulates all the logic from the legacy preprocess.py script.
    """
    code_blocks: Dict[str, Dict] = {}
    code_block_counter = 0

    def _process_code_block(match: re.Match, is_hidden: bool) -> str:
        """A closure to capture and store code blocks."""
        nonlocal code_block_counter
        original_code = match.group(1) or ""
        code_block_counter += 1
        placeholder_id = f"@@CODEBLOCK_ID_{code_block_counter}@@"

        if not original_code.endswith('\n'):
            original_code += '\n'

        code_blocks[placeholder_id] = {"content": original_code, "hidden": is_hidden}
        return placeholder_id

    # --- STAGE 1: Protect Code Blocks ---
    processed = re.sub(r'\\begin\{code\}\s*\[hide\](.*?)\\end\{code\}',
                       lambda m: _process_code_block(m, is_hidden=True), content, flags=re.DOTALL)
    processed = re.sub(r'\\begin\{code\}(.*?)\\end\{code\}',
                       lambda m: _process_code_block(m, is_hidden=False), processed, flags=re.DOTALL)

    # --- STAGE 2: Perform Text Replacements on LaTeX Content ---
    # Using an OrderedDict to ensure a predictable and logical order of operations.
    replacements: OrderedDictType[str, Any] = OrderedDict([
        # Simple text substitutions first
        (r"~", " "),
        (r'\\\[[^\]]*\]', ''),
        (r'\\defn\{(.*?)\}', r'\1'),
        (r'\\hrefAgdaDocs\{\}', r'\\href{https://agda.readthedocs.io/en/latest/}{Agda documentation}'),
        (r'\\hrefAgdaDocs\[([^\]]*)\]\[([^\]]*)\]', r'\\href{https://agda.readthedocs.io/en/latest/\1}{\2}'),

        # Handle \ab shorthand for \AgdaBound
        (r'\\ab\{(.*?)\}', r'\\AgdaBound{\1}'),

        # UPDATED: Replace the button macro with a simple placeholder string.
        # will be replaced with the actual HTML in the post-processing stage.
        (r'\\revealproofbutton\{\}', r'@@REVEAL_PROOF_BUTTON@@'),

        # Environment wrappers and complex callbacks
        (r'^\s*\\begin\{(NoConway|AgdaMultiCode)\}\s*?\n', ''),
        (r'^\s*\\end\{(NoConway|AgdaMultiCode)\}\s*?\n?', ''),
        (r'^\s*\\begin\{Conway\}\s*?\n', '\n\n@@ADMONITION_START|Conway specifics@@\n\n'),
        (r'^\s*\\end\{Conway\}\s*?\n?', '\n\n@@ADMONITION_END@@\n\n'),
        (r'\\hrefCIP\{(.*?)\}', _replace_cip_href),
        (r'\\modulenote\{\s*\\(Conway|Ledger)Module\{(.*?)\}\s*\}', _replace_modulenote),
        (r"\\(Cref|cref)\s*\{(.*?)\}", _replace_cref_commands),
        (r"^\s*\\begin\{figure\*\}(\[[^\]]*\])?\s*\n(.*?)\n\s*\\end\{figure\*\}\s*$", _process_figure_environment),

        # Handle theorem environments with optional title and label
        (r"\\begin{theorem}(?:\[(.*?)\])?\s*(.*?)\\end{theorem}", _process_theorem_like_environment("theorem")),
        (r"\\begin{lemma}(?:\[(.*?)\])?\s*(.*?)\\end{lemma}", _process_theorem_like_environment("lemma")),
        (r"\\begin{claim}(?:\[(.*?)\])?\s*(.*?)\\end{claim}", _process_theorem_like_environment("claim")),

        # Handle Agda term macros defined in macros.json. This is dynamically built.
        (r'\\(' + '|'.join(re.escape(k) for k in macro_definitions.get("agda_terms", {}).keys()) + r')\{\}',
         lambda m: _expand_agda_term_from_json(m, macro_definitions)),
    ])

    for pattern, repl in replacements.items():
        if not pattern: continue # Skip if pattern is empty (e.g., if no agda_terms)
        flags = re.MULTILINE if any(p in pattern for p in ['^', '$']) else 0
        processed = re.sub(pattern, repl, processed, flags=flags | re.DOTALL)

    # --- STAGE 3: Handle Generic \Agda... Macros not defined in macros.sty ---
    agda_classes = [
        'AgdaFunction', 'AgdaField', 'AgdaDatatype', 'AgdaRecord',
        'AgdaInductiveConstructor', 'AgdaModule', 'AgdaPrimitive',
        'AgdaBound', 'AgdaArgument'
    ]
    generic_agda_pattern = r'\\(' + '|'.join(agda_classes) + r')\{([^}]+)\}'
    processed = re.sub(generic_agda_pattern,
                       lambda m: f"\\texttt{{@@AgdaTerm@@basename={m.group(2)}@@class={m.group(1)}@@}}",
                       processed)

    return processed, code_blocks
