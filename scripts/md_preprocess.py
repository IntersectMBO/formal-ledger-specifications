# md_preprocess.py
# Purpose: Prepares a LaTeX-based literate Agda file (.lagda) for Pandoc processing.
# Actions:
# 1. Replaces Agda code blocks (\begin{code} / \begin{code}[hide]) with unique placeholders (@@CODEBLOCK_ID_n@@).
# 2. Stores the verbatim content of each code block, along with its hidden status, in a JSON file.
# 3. Inlines \modulenote macros into LaTeX \href commands.
# 4. Replaces specific Agda term macros (from macros.json) with \texttt{@@AgdaTerm@@...} markers.
# 5. Replaces \hldiff macros with \HighlightPlaceholder markers.
# 6. Removes \begin{figure*}/\end{figure*} environment wrappers.
# 7. Removes \begin{AgdaMultiCode}/\end{AgdaMultiCode} environment wrappers.
# 8. Removes \begin{NoConway}/\end{NoConway} environment wrappers (content flows).
# 9. Replaces \begin{Conway}/\end{Conway} environment wrappers with admonition markers (@@ADMONITION_START/END@@).
# Output:
# - Prints processed LaTeX content (with placeholders) to stdout.
# - Writes code block data to a specified JSON file.

import re
import json
import sys
import os

# --- Configuration ---
repo_url = "https://github.com/IntersectMBO/formal-ledger-specifications"
repo_src_base = "blob/master/src/Ledger"

# --- Global Storage ---
# Stores { "placeholder_id": {"content": "...", "hidden": True/False} }
code_blocks_data = {}
code_block_counter = 0
# Stores macro definitions loaded from JSON file { "macroName": {"basename": "...", "agda_class": "..."} }
macro_data = {}

# --- Replacement Functions ---

def process_code_block(match, is_hidden):
    """
    Callback function for re.sub to process matched code blocks.
    Stores the verbatim code content in the global dictionary and returns a unique placeholder ID.
    Args:
        match (re.Match): The regex match object. Group 1 contains the code content.
        is_hidden (bool): True if the block was marked with [hide].
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

def replace_modulenote_direct(match):
    """
    Callback function for re.sub to expand modulenote{LedgerModule{Arg}}
    directly into the corresponding sentence with LaTeX href commands.
    Args:
        match (re.Match): The regex match object. Group 1 contains the Module name.
    Returns:
        str: The expanded sentence with href links.
    """
    module_name = match.group(1) # Capture group 1 is the module name
    module_text = f"Ledger.{module_name}"
    module_file = f"{module_name}.lagda"
    # Construct URL assuming standard project structure
    module_url = f"{repo_url}/{repo_src_base}/{module_file}"
    # Use \href{URL}{\texttt{TEXT}} for Pandoc compatibility
    module_link = f"\\href{{{module_url}}}{{\\texttt{{{module_text}}}}}"
    repo_link = f"\\href{{{repo_url}}}{{formal ledger specification}}"
    # Reconstruct the sentence based on original \modulenote definition
    return f"This section is part of the {module_link} module of the {repo_link}"

def expand_agda_term_placeholder(match):
    """
    Callback function for re.sub to replace known Agda term macros (e.g., \txins{})
    with a \texttt enclosed marker containing semantic info from the loaded JSON.
    Example output: \texttt{@@AgdaTerm@@basename=txins@@class=AgdaField@@}
    Args:
        match (re.Match): The regex match object. Group 1 contains the macro name (e.g., "txins").
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
        print(f"Debug: Macro {macro_name} not found in JSON, keeping original.", file=sys.stderr)
        return match.group(0)

def expand_hldiff(match):
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

# --- Main Processing Function ---
def preprocess_lagda(content):
    """
    Applies all preprocessing replacements to the input LaTeX content.
    Args:
        content (str): The original content of the .lagda file.
    Returns:
        str: The processed LaTeX content with placeholders.
    """
    global macro_data # Ensure loaded macro data is accessible

    # Order of operations matters here. Code blocks are replaced first.

    # 1. Replace code blocks with placeholders (@@CODEBLOCK_ID_n@@) and store content
    # Process hidden blocks first to ensure the [hide] variant is matched correctly
    content = re.sub(r'\\begin\{code\}\s*\[hide\](.*?)\\end\{code\}',
                     lambda m: process_code_block(m, is_hidden=True),
                     content, flags=re.DOTALL)
    # Process remaining visible blocks
    content = re.sub(r'\\begin\{code\}(.*?)\\end\{code\}',
                     lambda m: process_code_block(m, is_hidden=False),
                     content, flags=re.DOTALL)

    # 2. Inline \modulenote
    # Uses specific regex to match the known structure with \LedgerModule inside
    content = re.sub(r'\\modulenote\{\s*\\LedgerModule\{(.*?)\}\s*\}',
                     replace_modulenote_direct,
                     content)

    # 3. Replace Agda term macros with \texttt{@@AgdaTerm@@...} placeholders
    if macro_data.get("agda_terms"):
      # Build a regex pattern matching any known Agda term macro (keys from JSON) followed by {}
      agda_term_pattern = r'\\(' + '|'.join(re.escape(k) for k in macro_data["agda_terms"].keys()) + r')\{\}'
      content = re.sub(agda_term_pattern, expand_agda_term_placeholder, content)

    # 4. Replace \hldiff with \HighlightPlaceholder
    # Use non-greedy match for content and DOTALL flag for potential multiline content
    content = re.sub(r'\\hldiff\{(.*?)\}', expand_hldiff, content, flags=re.DOTALL)

    # 5. Remove figure* environment wrappers (matching start/end lines)
    content = re.sub(r'^\s*\\begin\{figure\*}(\[[^\]]*\])?\s*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{figure\*\}\s*?\n?', '', content, flags=re.MULTILINE)

    # 6. Remove AgdaMultiCode environment wrappers (matching start/end lines)
    content = re.sub(r'^\s*\\begin\{AgdaMultiCode\}\s*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{AgdaMultiCode\}\s*?\n?', '', content, flags=re.MULTILINE)

    # 7. Handle Conway/NoConway environments
    # Remove NoConway wrappers entirely
    content = re.sub(r'^\s*\\begin\{NoConway\}\s*?\n', '', content, flags=re.MULTILINE)
    content = re.sub(r'^\s*\\end\{NoConway\}\s*?\n?', '', content, flags=re.MULTILINE)
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
