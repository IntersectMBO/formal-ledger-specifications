# preprocess.py

# PURPOSE: Prepares a LaTeX-based literate Agda file (.lagda) for Pandoc processing.
#
# USAGE: This script is part of a four stage pipeline and is meant to be used in conjunction with
#        `generate_macros.py`, `agda-filter.lua`, `postprocess.py`, and pandoc.  For example,
#          $ python generate_macros_json.py macros.sty preprocess_macros.json
#          $ python preprocess.py Transaction.lagda preprocess_macros.json code_blocks.json > Transaction.lagda.temp
#          $ pandoc Transaction.lagda.temp -f latex -t gfm+attributes --lua-filter agda-filter.lua -o Transaction.lagda.intermediate
#          $ python postprocess.py Transaction.lagda.intermediate code_blocks.json labels_map.json Transaction.lagda.md
#
# OUTPUT:
# - .lagda.temp file containing processed LaTeX content (with placeholders) of input file;
# - .json file containing all the code blocks of input file.
#
# Actions:
# 1.  Replace Agda code blocks (\begin{code} / \begin{code}[hide]) with unique placeholders (@@CODEBLOCK_ID_n@@).
# 2.  Store verbatim content of each code block, along with its hidden status, in a JSON file.
# 3.  Inline \modulenote macros into LaTeX \href commands.
# 4.  Replace specific Agda term macros (from macros.json) with \texttt{@@AgdaTerm@@...} markers.
# 5.  Replace \hldiff macros with \HighlightPlaceholder markers.
# 6.  Remove \begin{figure*}/\end{figure*} environment wrappers.
# 7.  Remove \begin{AgdaMultiCode}/\end{AgdaMultiCode} environment wrappers.
# 8.  Remove \begin{NoConway}/\end{NoConway} environment wrappers (content flows).
# 9.  Replace \begin{Conway}/\end{Conway} environment wrappers with admonition markers (@@ADMONITION_START/END@@).
#
# NOTES:
# +  New strategy to handle labels and refs when processing `figure*` environments
#    (such labels and refs were lost in initial versions of the pipeline):
#    Instead of just stripping `\begin{figure*}` and `\end{figure*}` wrappers, we
#    1.  extract `\caption{...}` text and `\label{...}` name;
#    3.  remove LaTeX `figure*`, `caption`, and `label` commands;
#    4.  insert placeholder `@@FIGURE_BLOCK_TO_SUBSECTION@@label=original_label_name@@caption=Caption Text@@`;
#        content that was in figure (now `@@CODEBLOCK_ID_n@@` placeholders) will appear below placeholder;
#    5.  use placeholder `@@UNLABELLED_FIGURE_CAPTION@@caption=Caption Text@@` if figure has caption but no label.
#
# +  New strategy to handle cross-refs:
#    1.  identify LaTeX `\Cref{...}` and `\cref{...}` commands;
#    2.  convert them into placeholder `@@CROSS_REF@@command=Cref@@targets=target1,target2,...@@`.


import re
import json
import sys
import os
from typing import Dict

# --- Configuration ---
repo_url = "https://github.com/IntersectMBO/formal-ledger-specifications"
repo_src_base = "blob/master/src/Ledger"

# --- Global Storage ---
# Stores { "placeholder_id": {"content": "...", "hidden": True/False} }
code_blocks_data = {}
code_block_counter = 0
# Stores macro definitions loaded from JSON file { "macroName": {"basename": "...", "agda_class": "..."} }
macro_data = {}

def sanitize_latex_commands(content: str) -> str:
    """
    Replaces common LaTeX commands with their text/Unicode equivalents
    to prevent Pandoc parsing errors.
    """
    replacements: Dict[str, str] = {
        r"\\sectionname": "Section",
        r"\\S": "§",
    }
    for pattern, replacement in replacements.items():
        content = re.sub(pattern, replacement, content)
    return content

# --- Replacement Functions ---

def process_code_block(match: re.Match, is_hidden: bool) -> str:
    """
    Callback function for re.sub to process matched code blocks.
    Stores the verbatim code content in the global dictionary and returns a unique placeholder ID.
    Args:
        match     : The regex match object. Group 1 contains the code content.
        is_hidden : True if the block was marked with [hide].
    Returns:
        str: The placeholder ID (e.g., "@@CODEBLOCK_ID_1@@").
    """
    global code_block_counter, code_blocks_data
    # Extract content between the \begin{code...} and \end{code}
    # Group 1 should capture the content due to (.*?)
    original_code = match.group(1)
    code_block_counter += 1
    placeholder_id = f"@@CODEBLOCK_ID_{code_block_counter}@@"

    # Safety check for potentially empty captures
    if original_code is None: original_code = ""
    # Ensure content ends with a newline for consistent handling later
    if not original_code.endswith('\n'):
        original_code += '\n'

    code_blocks_data[placeholder_id] = {
        "content": original_code,
        "hidden": is_hidden
    }
    # Return ONLY the placeholder to replace the entire \begin{code}...\end{code} block
    return placeholder_id

def replace_modulenote_direct(match: re.Match) -> str:
    """
    Callback for re.sub to expand modulenote{<Type>Module{Arg}}
    into a sentence with LaTeX href commands.
    Args:
        match: The regex match object. Group 1 contains the Module name.
    Returns:
        str: The expanded sentence with href links.
    """
    # capture the module type (e.g., "Conway") and name (e.g., "Utxow").
    module_type = match.group(1)
    module_name = match.group(2)

    # Use the captured type to form the module path.
    base_path = "Ledger/Conway" if module_type == "Conway" else "Ledger"

    module_text = f"{base_path.replace('/', '.')}.{module_name}"

    # The file path needs to be constructed relative to the 'src' directory.
    # The repo_src_base in your script already points to 'blob/master/src/Ledger',
    # so we need to adjust accordingly.
    if module_type == "Conway":
        # The URL needs to go up one level from '.../src/Ledger' to get to '.../src'
        # before descending into 'Ledger/Conway'. A simpler way is to just construct it.
        module_file = f"Ledger/Conway/{module_name}.lagda"
        # And redefine the base URL for the link text
        repo_link_base = f"{repo_url}/{repo_src_base}/../../src"
        module_url = f"{repo_link_base}/{module_file}"
    else:
        module_file = f"{module_name}.lagda"
        module_url = f"{repo_url}/{repo_src_base}/{module_file}"


    module_link = f"\\href{{{module_url}}}{{\\texttt{{{module_text}}}}}"
    repo_link = f"\\href{{{repo_url}}}{{formal ledger specification}}"

    return f"This section is part of the {module_link} module of the {repo_link}"

def replace_cip_href(match: re.Match) -> str:
    """
    Callback for re.sub to expand \hrefCIP{XXXX} into a full URL.
    """
    cip_number = match.group(1).zfill(4) # Pad with zeros to 4 digits
    cip_url = f"https://cips.cardano.org/cip-{cip_number}"
    return f"\\href{{{cip_url}}}{{CIP-{cip_number}}}"

def expand_agda_term_placeholder(match: re.Match) -> str:
    """
    Callback function for re.sub to replace known Agda term macros (e.g., \txins{})
    with a \texttt enclosed marker containing semantic info from the loaded JSON.
    Example output: \texttt{@@AgdaTerm@@basename=txins@@class=AgdaField@@}
    Args:
        match: The regex match object. Group 1 contains the macro name (e.g., "txins").
    Returns:
        str: The \texttt enclosed marker string, or the original macro if not found in JSON.
    """
    global macro_data
    macro_name = match.group(1)
    term_info = macro_data.get("agda_terms", {}).get(macro_name)

    if term_info and isinstance(term_info, dict):
        basename = term_info.get("basename", macro_name) # Default to macro name itself
        agda_class = term_info.get("agda_class", "AgdaUnknown") # Default if class missing
        # Format with distinctive markers for Lua filter to find within \texttt -> Code element
        return f"\\texttt{{@@AgdaTerm@@basename={basename}@@class={agda_class}@@}}"
    else:
        # If macro definition wasn't found in JSON, return the original text
        print(f"WARNING: Macro {macro_name} not found in JSON, keeping original.", file=sys.stderr)
        return match.group(0)

def expand_hldiff(match: re.Match) -> str:
    """
    Callback function for re.sub to replace hldiff{content} with a placeholder
    that the Lua filter can convert to a styled span.
    Args:
        match (re.Match): The regex match object. Group 1 contains the content.
    Returns:
        str: The HighlightPlaceholder marker string.
    """
    content = match.group(1)
    # Using a simple placeholder command that Pandoc's LaTeX reader should pass through
    return f"\\HighlightPlaceholder{{{content}}}"

# --- New Helper Function for Figures ---
def process_figure_environment(match: re.Match) -> str:
    """
    Processes the content of a LaTeX figure* environment. Extract caption and label, remove
    them and figure wrappers, return placeholder string followed by remaining content.
    @@CODEBLOCK_ID_n@@ placeholders assumed to be already in content.
    Details
    *  designed to be used with `re.sub`
    *  takes regex match object for `figure*` environment
    *  searches for `\caption{...}` and `\label{...}` within figure
    *  extracts caption text and label ID
    *  removes original `\caption` and `\label` commands from figure content
    *  removes `\begin{AgdaMultiCode}` and `\end{AgdaMultiCode}` from figure content
    *  returns string beginning `\n@@FIGURE_BLOCK_TO_SUBSECTION@@label=...@@caption=...@@\n`
       or `@@UNLABELLED_FIGURE_CAPTION@@...` followed by rest of figure content.
    """
    # Group 1: Optional attributes of figure* environment (e.g., [ht]) - currently unused by replacer
    # Group 2: The actual content within the figure* environment
    figure_inner_content = match.group(2)

    caption_text = "Untitled Section" # default caption
    original_label_id = ""            # default latex label

    # extract caption (flags=re.DOTALL makes (.*?) match across newlines in caption content)
    caption_match = re.search(r"\\caption\{(.*?)\}", figure_inner_content, flags=re.DOTALL)
                                                                         #
    if caption_match:
        raw_captured_caption_text = caption_match.group(1)
        stripped_caption_text = raw_captured_caption_text.strip()
        # replace various newline types with single space
        single_line_caption = stripped_caption_text.replace("\r\n", " ").replace("\n", " ").replace("\r", " ")
        # squash multiple spaces arising from replacements into single space
        squashed_caption_text = re.sub(r'\s+', ' ', single_line_caption).strip()
        # escape "@@" in caption text for placeholder format;
        caption_text = squashed_caption_text.replace("@@", "@ @")
        # remove original \caption command from figure content
        figure_inner_content = figure_inner_content.replace(caption_match.group(0), "", 1)
    else:
        print(f"WARNING (FIGURE_ENV): NO CAPTION MATCH FOUND in the above figure_inner_content.", file=sys.stderr)

    # extract label
    label_match = re.search(r"\\label\{(.*?)\}", figure_inner_content)
    if label_match:
        original_label_id_raw = label_match.group(1).strip()
        original_label_id = original_label_id_raw.replace("@@", "@ @") # escape @@
        figure_inner_content = figure_inner_content.replace(label_match.group(0), "", 1)
    else:
        print(f"WARNING: NO LABEL MATCH FOUND in figure_inner_content (after potential caption removal).", file=sys.stderr)

    # remove AgdaMultiCode wrappers typically inside figures
    figure_inner_content = re.sub(r"\\begin\{AgdaMultiCode\}\s*", "", figure_inner_content, flags=re.DOTALL)
    figure_inner_content = re.sub(r"\s*\\end\{AgdaMultiCode\}", "", figure_inner_content, flags=re.DOTALL)

    figure_inner_content = figure_inner_content.strip()

    # create placeholder using processed 'caption_text'
    if original_label_id:
        placeholder = f"\n@@FIGURE_BLOCK_TO_SUBSECTION@@label={original_label_id}@@caption={caption_text}@@\n"
    else:
        placeholder = f"\n@@UNLABELLED_FIGURE_CAPTION@@caption={caption_text}@@\n"

    return placeholder + figure_inner_content

# --- Helper Function for \Cref and \cref ---
def replace_cref_commands(match: re.Match) -> str:
    """
    Replaces \Cref{targets} or \cref{targets} with a placeholder.
    Details
    *  designed to be used with `re.sub`
    *  matches `\Cref{...}` or `\cref{...}`
    *  extracts command name (`Cref` or `cref`) and raw target string (e.g., `fig:epoch:sts,fig:another`)
    *  replaces LaTeX command with placeholder `@@CROSS_REF@@command=CmdName@@targets=TargetsString@@`
    *  `targets` part contains raw comma-separated list of targets
    *  `postprocess.py` handles splitting these and looking them up
    """
    command_name = match.group(1) # "Cref" or "cref"
    targets_str_raw = match.group(2) # Raw content between braces

    # Escape "@@" in the targets string to avoid breaking our placeholder format
    targets_str_escaped = targets_str_raw.replace("@@", "@ @")

    return f"@@CROSS_REF@@command={command_name}@@targets={targets_str_escaped}@@"


# --- New Helper Function for Agda macros like \AgdaFunction{myfun} ---
def process_generic_agda_macros(content: str) -> str:
    """Process generic Agda macros from agda.sty"""
    import re

    agda_classes = [
        'AgdaFunction', 'AgdaField', 'AgdaDatatype', 'AgdaRecord',
        'AgdaInductiveConstructor', 'AgdaCoinductiveConstructor',
        'AgdaModule', 'AgdaPostulate', 'AgdaPrimitive', 'AgdaMacro',
        'AgdaBound', 'AgdaGeneralizable', 'AgdaArgument',
        'AgdaKeyword', 'AgdaString', 'AgdaNumber', 'AgdaSymbol',
        'AgdaPrimitiveType', 'AgdaComment', 'AgdaPragma'
    ]

    agda_pattern = r'\\(' + '|'.join(re.escape(cls) for cls in agda_classes) + r')\{([^}]+)\}'

    def replace_agda_macro(match:re.Match) -> str:
        agda_class = match.group(1)
        content_name = match.group(2)
        return f"\\texttt{{@@AgdaTerm@@basename={content_name}@@class={agda_class}@@}}"

    return re.sub(agda_pattern, replace_agda_macro, content, flags=re.DOTALL)


# --- Main Processing Function ---
def preprocess_lagda(content: str) -> str:
    """
    Applies all preprocessing replacements to input LaTeX content.
    Args:
        content: The original content of the .lagda file.
    Returns:
        The processed LaTeX content with placeholders.
    """
    global macro_data # Ensure loaded macro data is accessible

    # Order of operations matters here. Code blocks are replaced first.

    # STEP 0: Sanitize basic LaTeX commands before any other processing.
    # This new step prevents downstream errors.
    content = sanitize_latex_commands(content)

    # STEP 1: Replace code blocks with placeholders (@@CODEBLOCK_ID_n@@) and store content.
    # Process hidden blocks first to ensure the [hide] variant is matched correctly.
    content = re.sub(r'\\begin\{code\}\s*\[hide\](.*?)\\end\{code\}',
                     lambda m: process_code_block(m, is_hidden=True),
                     content, flags=re.DOTALL)
    # Process remaining visible blocks.
    content = re.sub(r'\\begin\{code\}(.*?)\\end\{code\}',
                     lambda m: process_code_block(m, is_hidden=False),
                     content, flags=re.DOTALL)

    # Now that the Agda code is safely stored in the JSON, we can replace
    # the non-breaking space tildes in the remaining LaTeX text.
    content = re.sub(r"~", " ", content)

    # STEP 2: Inline \modulenote (now with updated, more general regex)
    content = re.sub(r'\\modulenote\{\s*\\(Conway|Ledger)Module\{(.*?)\}\s*\}',
                     replace_modulenote_direct,
                     content)

    # STEP 2b: New step to handle CIP links
    content = re.sub(r'\\hrefCIP\{(.*?)\}', replace_cip_href, content)

    # STEP 3: Replace Agda term macros with \texttt{@@AgdaTerm@@...} placeholders.
    if macro_data.get("agda_terms"):
      # Build a regex pattern matching any known Agda term macro (keys from JSON) followed by {}
      agda_term_pattern = r'\\(' + '|'.join(re.escape(k) for k in macro_data["agda_terms"].keys()) + r')\{\}'
      content = re.sub(agda_term_pattern, expand_agda_term_placeholder, content)

    # STEP 3b: Process generic Agda macros from agda.sty.
    content = process_generic_agda_macros(content)

    # STEP 4: Replace \hldiff with \HighlightPlaceholder.
    # Use non-greedy match for content and DOTALL flag for potential multiline content
    content = re.sub(r'\\hldiff\{(.*?)\}', expand_hldiff, content, flags=re.DOTALL)

    # STEP 5: Process figure* environments to extract caption/label into placeholders.
    #    This replaces the old simple stripping of \begin{figure*} and \end{figure*}
    #    The regex captures the content between \begin{figure*}[optional_attrs] and \end{figure*}
    #    It assumes \begin and \end are on lines by themselves, possibly with attributes for \begin.
    content = re.sub(
        r"^\s*\\begin\{figure\*\}(\[[^\]]*\])?\s*\n(.*?)\n\s*\\end\{figure\*\}\s*$",
        process_figure_environment,
        content,
        flags=re.DOTALL | re.MULTILINE
    )   #    More Details
        #    * Match `\begin{figure*}` at the start of a line (with optional attributes).
        #    * Capture all content `(.*?)` until `\end{figure*}` on its own line.
        #    * Use `re.DOTALL` so `.` matches newlines, and `re.MULTILINE` for `^` and `$`.

    # STEP 6: Replace \Cref and \cref commands with placeholders. Regex handles optional
    # whitespace around braces and captures comma-separated targets. Non-greedy (.*?) captures
    # only up to first closing brace. `flags=re.DOTALL` handles `\Cref` arguments that span lines.
    content = re.sub(r"\\(Cref|cref)\s*\{(.*?)\}", replace_cref_commands, content, flags=re.DOTALL)

    # STEP 7: Remove AgdaMultiCode environment wrappers. If AgdaMultiCode is always
    # inside a figure* environment, then `process_figure_environment` strips them
    # from figure's content.  If AgdaMultiCode can be standalone, separate stripping
    # still needed. To be safe, let's assume it can be standalone. AFTER figure processing,
    # run the following in case process_figure_environment doesn't strip them fully.
    content = re.sub(r'^\s*\\begin\{AgdaMultiCode\}\s*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{AgdaMultiCode\}\s*?\n?', '', content, flags=re.MULTILINE)

    # STEP 8: Handle Conway/NoConway environments.
    # Remove NoConway wrappers entirely
    content = re.sub(r'^\s*\\begin\{NoConway\}\s*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{NoConway\}\s*?\n?', '', content, flags=re.MULTILINE)

    # STEP 9: Handle the \defn{...} command by simply extracting its content.
    # This replaces `\defn{record}` with just `record`.
    content = re.sub(r'\\defn\{(.*?)\}', r'\1', content)

    # STEP 10: Handle the custom Agda documentation links.
    # First, handle the variant with arguments: \hrefAgdaDocs[path][text]
    content = re.sub(r'\\hrefAgdaDocs\[([^\]]*)\]\[([^\]]*)\]',
                     r'\\href{https://agda.readthedocs.io/en/latest/\1}{\2}',
                     content)

    # Second, handle the variant with no arguments: \hrefAgdaDocs{}
    content = re.sub(r'\\hrefAgdaDocs\{\}',
                     r'\\href{https://agda.readthedocs.io/en/latest/}{Agda documentation}',
                     content)

    # STEP 11: Remove manual vertical space commands like \\[...].
    # Markdown handles paragraph spacing automatically.
    content = re.sub(r'\\\[[^\]]*\]', '', content)

    # =================================================================
    # NEW SYSTEMIC MACRO REPLACEMENT
    # This block can replace many of the one-off re.sub calls.
    # It assumes your macros.json has a "simple_macros" dictionary like:
    # { "simple_macros": { "hrefAgdaDocs": "\\href{...}{...}", "mycmd": "my text" } }

    if "simple_macros" in macro_data:
        # Create a single, powerful regex that matches any of the simple macro names
        # e.g. r"\\(hrefAgdaDocs|defn|anotherCmd)"
        macro_names = [re.escape(k) for k in macro_data["simple_macros"].keys()]
        pattern = r"\\(" + "|".join(macro_names) + r")"

        # Define a callback function to handle the replacement
        def replace_from_json(match: re.Match) -> str:
            macro_name = match.group(1)
            # Look up the replacement text in the dictionary
            return macro_data["simple_macros"].get(macro_name, "")

        # Apply all simple macro replacements in one go
        content = re.sub(pattern, replace_from_json, content)

    # We could do a similar thing for macros with arguments.
    # =================================================================

    # Replace Conway wrappers with Admonition markers, ensuring separation with newlines
    content = re.sub(r'^\s*\\begin\{Conway\}\s*?\n', '\n\n@@ADMONITION_START|Conway specifics@@\n\n', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{Conway\}\s*?\n?', '\n\n@@ADMONITION_END@@\n\n', content, flags=re.MULTILINE)

    return content




# --- Script Entry Point ---
if __name__ == "__main__":
    # Expect input .lagda file, input macro JSON, output code blocks JSON path
    if len(sys.argv) != 4:
        print(f"Usage: python {sys.argv[0]} <input.lagda> <macros.json> <output_code_blocks.json>")
        sys.exit(1)

    input_lagda_file = sys.argv[1]
    input_json_file = sys.argv[2]
    output_code_blocks_file = sys.argv[3] # File to save code blocks

    # Reset global state in case script is imported/run multiple times in one process
    code_blocks_data = {}
    code_block_counter = 0
    macro_data = {}

    try:
        # Load macro definitions from JSON file provided as argument
        print(f"Loading macro definitions from {input_json_file}", file=sys.stderr)
        with open(input_json_file, 'r', encoding='utf-8') as f_json:
            macro_data = json.load(f_json)
        print(f"Loaded {len(macro_data.get('agda_terms', {}))} Agda term macros.", file=sys.stderr)

        # Read input lagda file content
        print(f"Reading input file {input_lagda_file}", file=sys.stderr)
        with open(input_lagda_file, 'r', encoding='utf-8') as f_lagda:
            input_content = f_lagda.read()

        # Process the content using the main function
        print(f"Processing content...", file=sys.stderr)
        processed_content = preprocess_lagda(input_content) # This populates global code_blocks_data

        # Output the processed LaTeX (with placeholders) to standard output
        sys.stdout.write(processed_content)
        print(f"Processed LaTeX content written to stdout.", file=sys.stderr)

        # Save the captured code blocks dictionary to the specified JSON file
        print(f"Saving code blocks data to {output_code_blocks_file}", file=sys.stderr)
        with open(output_code_blocks_file, 'w', encoding='utf-8') as f_code:
            # Use indent for readability
            json.dump(code_blocks_data, f_code, indent=2)
        print(f"{len(code_blocks_data)} code blocks saved.", file=sys.stderr)

    except FileNotFoundError as e:
        print(f"Error: Input file not found: {e.filename}", file=sys.stderr)
        sys.exit(1)
    except json.JSONDecodeError as e:
        print(f"Error: Failed to parse JSON file {input_json_file}: {e}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"An error occurred during preprocessing: {e}", file=sys.stderr)
        sys.exit(1)
