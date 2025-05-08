# md_build.py
import os
import sys
import subprocess
import json
import shutil
from pathlib import Path
# Attempt to import yaml, but don't fail if not present initially
try:
    import yaml
    HAS_YAML = True
except ImportError:
    HAS_YAML = False
    print("Warning: PyYAML not installed. `mkdocs.yml` will be generated as basic JSON.", file=sys.stderr)
    print("Install with: pip install PyYAML", file=sys.stderr)


# --- Configuration (Reflecting agreed paths) ---
PROJECT_ROOT = Path(__file__).resolve().parent.parent # assume this script is in PROJECT_ROOT/scripts/
SRC_DIR = PROJECT_ROOT / "src"                      # Agda source
DOCS_DIR = PROJECT_ROOT / "docs"                    # static doc assets source
SCRIPTS_DIR = PROJECT_ROOT / "scripts"              # location of this script and helpers
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty" #
DOCS_TEMPLATE_DIR = DOCS_DIR / "templates"          # initial index.md and mkdocs_template.yml

# Build artifacts primarily under _build/
BUILD_DIR = PROJECT_ROOT / "_build"


BUILD_DOCS_DIR = BUILD_DIR / "docs"                 # root for docs build intermediates
PREPROCESS_MACROS_JSON = BUILD_DOCS_DIR / "preprocess_macros.json"  # generated JSON
TEMP_DIR = BUILD_DOCS_DIR / "lagda_temp"                            # intermediate preprocessed LaTeX
CODE_BLOCKS_DIR = BUILD_DOCS_DIR / "code_blocks_json"               # intermediate JSON code blocks
INTERMEDIATE_MD_DIR = BUILD_DOCS_DIR / "md_intermediate"            # intermediate pandoc md output
FINAL_LAGDA_MD_DIR = BUILD_DOCS_DIR / "final_lagda_md"              # final .lagda.md (input to `agda --html`)
AGDA_HTML_OUTPUT_DIR = BUILD_DOCS_DIR / "agda_html_output"          # Agda --html output dir

# Final source directory that mkdocs will build from
MKDOCS_SRC_DIR = BUILD_DOCS_DIR / "mkdocs_src"
MKDOCS_DOCS_DIR = MKDOCS_SRC_DIR / "docs"           # final .md files, css, js
MKDOCS_CSS_DIR = MKDOCS_DOCS_DIR / "css"
MKDOCS_JS_DIR = MKDOCS_DOCS_DIR / "js"

# Script paths (using SCRIPTS_DIR)
GENERATE_MACROS_PY = SCRIPTS_DIR / "md_generate_macros_json.py"
PREPROCESS_PY = SCRIPTS_DIR / "md_preprocess.py"
POSTPROCESS_PY = SCRIPTS_DIR / "md_postprocess.py"
LUA_FILTER = SCRIPTS_DIR / "md_agda-filter.lua"

# Static asset source paths
CUSTOM_CSS_SOURCE = SCRIPTS_DIR / "css" / "custom.css" # Assumes CSS lives near scripts
CUSTOM_JS_SOURCE = SCRIPTS_DIR / "js" / "custom.js"   # Assumes JS lives near scripts
INDEX_MD_TEMPLATE = DOCS_TEMPLATE_DIR / "index.md"
MKDOCS_YML_TEMPLATE = DOCS_TEMPLATE_DIR / "mkdocs_template.yml" # Optional template

# --- Helper to run commands ---
def run_command(command_args, cwd=None, capture_output=False, text=True, check=True, stdout_file=None):
    """
    Runs a shell command, optionally redirecting stdout to a file.
    Raises CalledProcessError if check=True and command fails.
    """
    # Ensure all args are strings, especially Path objects
    command_args_str = [str(arg) for arg in command_args]
    print(f"Running: {' '.join(command_args_str)}", file=sys.stderr)

    stdout_target = None
    if stdout_file:
        # Ensure parent directory exists for stdout_file
        Path(stdout_file).parent.mkdir(parents=True, exist_ok=True)
        stdout_target = open(stdout_file, "w", encoding="utf-8")
    elif capture_output:
        stdout_target = subprocess.PIPE

    # Use Popen for more control if needed, but run is simpler for now
    process = subprocess.run(command_args_str, cwd=cwd,
                             stdout=stdout_target,
                             stderr=subprocess.PIPE, # Always capture stderr
                             text=text, check=False, # Check manually after printing stderr
                             encoding='utf-8') # Specify encoding

    if stdout_file:
        stdout_target.close() # Ensure file is written and closed

    if check and process.returncode != 0:
        print(f"Error running command: {' '.join(command_args_str)}", file=sys.stderr)
        # Stderr was captured, print it
        if process.stderr: print(f"Stderr:\n{process.stderr}", file=sys.stderr)
        # Print stdout too if it wasn't redirected to file and was captured
        if process.stdout and not stdout_file and capture_output: print(f"Stdout:\n{process.stdout}", file=sys.stderr)
        raise subprocess.CalledProcessError(process.returncode, command_args_str,
                                            output=process.stdout, stderr=process.stderr)
    # Print stderr even on success if needed for warnings? Optional.
    elif process.stderr:
       print(f"Stderr warnings:\n{process.stderr}", file=sys.stderr)

    return process

# --- Main Build Logic ---
def main():
    """Orchestrates the documentation build pipeline."""

    # 1. Setup Directories
    print("Setting up build directories...", file=sys.stderr)
    shutil.rmtree(BUILD_DIR, ignore_errors=True) # Clear entire build dir
    # MKDOCS_SRC_DIR is inside BUILD_DIR, so it gets cleared too.
    # shutil.rmtree(MKDOCS_SRC_DIR, ignore_errors=True) # Not needed if BUILD_DIR is cleared

    # Create build subdirectories
    TEMP_DIR.mkdir(parents=True, exist_ok=True)
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)
    FINAL_LAGDA_MD_DIR.mkdir(parents=True, exist_ok=True)
    AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    # Create final MkDocs source structure
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)

    # 2. Generate preprocess_macros.json (if script exists)
    if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
        print(f"Generating {PREPROCESS_MACROS_JSON.name} from {MACROS_STY_PATH.name}...", file=sys.stderr)
        run_command([
            "python", GENERATE_MACROS_PY,
            MACROS_STY_PATH,
            PREPROCESS_MACROS_JSON # Output to BUILD_DIR now
        ])
    elif not PREPROCESS_MACROS_JSON.exists():
        # Fail if generator doesn't exist AND the json file isn't already there
        print(f"Error: {PREPROCESS_MACROS_JSON.name} not found and cannot be generated.", file=sys.stderr)
        sys.exit(1)
    else:
        print(f"Using existing {PREPROCESS_MACROS_JSON.name}", file=sys.stderr)

    mkdocs_nav_structure = {} # Use dict for potentially nested structure later {path: title}

    # 3. Find and process all .lagda files
    print(f"Searching for .lagda files in {SRC_DIR}...", file=sys.stderr)
    lagda_files = sorted(list(SRC_DIR.rglob("*.lagda")))
    print(f"Found {len(lagda_files)} .lagda files.", file=sys.stderr)

    if not lagda_files:
        print("Warning: No .lagda files found. Exiting.", file=sys.stderr)
        sys.exit(0)

    for lagda_file_abs_path in lagda_files:
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR) # e.g., Ledger/Transaction.lagda
        # Create path parts for building intermediate/output paths
        output_subdirs = relative_path.parent # e.g., Ledger or '.'

        print(f"\nProcessing: {relative_path}", file=sys.stderr)

        # --- Define file paths for this iteration ---
        # Input
        current_lagda_src = lagda_file_abs_path

        # Intermediate files (use relative path under specific dirs)
        current_temp_lagda = TEMP_DIR / relative_path.with_suffix(".lagda.temp")
        current_code_blocks = CODE_BLOCKS_DIR / relative_path.with_suffix(".codeblocks.json")
        current_intermediate_md = INTERMEDIATE_MD_DIR / relative_path.with_suffix(".md.intermediate")
        current_final_lagda_md = FINAL_LAGDA_MD_DIR / relative_path.with_suffix(".lagda.md") # Input for Agda --html

        # Agda output path (relative to AGDA_HTML_OUTPUT_DIR)
        agda_processed_md = AGDA_HTML_OUTPUT_DIR / relative_path.with_suffix(".md")

        # Final MkDocs path (relative to MKDOCS_DOCS_DIR)
        mkdocs_final_md = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")

        # --- Create necessary subdirectories for output files ---
        current_temp_lagda.parent.mkdir(parents=True, exist_ok=True)
        current_code_blocks.parent.mkdir(parents=True, exist_ok=True)
        current_intermediate_md.parent.mkdir(parents=True, exist_ok=True)
        current_final_lagda_md.parent.mkdir(parents=True, exist_ok=True)
        agda_processed_md.parent.mkdir(parents=True, exist_ok=True) # Ensure Agda output dir exists
        mkdocs_final_md.parent.mkdir(parents=True, exist_ok=True) # Ensure final MkDocs dir exists


        # --- Execute Pipeline Steps ---
        try:
            # A: Preprocess
            print(f"  Running md_preprocess.py -> {current_temp_lagda.relative_to(BUILD_DIR)}, {current_code_blocks.relative_to(BUILD_DIR)}", file=sys.stderr)
            run_command([
                "python", PREPROCESS_PY,
                current_lagda_src,
                PREPROCESS_MACROS_JSON, # Use the one generated in BUILD_DIR
                current_code_blocks
            ], stdout_file=current_temp_lagda)

            # B: Pandoc + Lua
            print(f"  Running Pandoc + Lua -> {current_intermediate_md.relative_to(BUILD_DIR)}", file=sys.stderr)
            run_command([
                "pandoc", current_temp_lagda,
                "-f", "latex",
                "-t", "gfm+attributes",
                "--lua-filter", LUA_FILTER,
                "-o", current_intermediate_md
            ])

            # C: Postprocess
            print(f"  Running md_postprocess.py -> {current_final_lagda_md.relative_to(BUILD_DIR)}", file=sys.stderr)
            run_command([
                "python", POSTPROCESS_PY,
                current_intermediate_md,
                current_code_blocks,
                current_final_lagda_md
            ])

            # D: Agda --html
            print(f"  Running agda --html -> {agda_processed_md.relative_to(BUILD_DIR)}", file=sys.stderr)
            # Run from project root to allow relative includes like '-i src'
            # Input is the *final* .lagda.md generated by postprocess
            run_command([
                "agda", "--html", "--html-highlight=code",
                f"--html-dir={AGDA_HTML_OUTPUT_DIR.resolve()}", # Absolute path best for Agda output dir
                "-i", str(SRC_DIR.resolve()), # Absolute path for include dir
                str(current_final_lagda_md.resolve()) # Absolute path for input file
            ], cwd=PROJECT_ROOT)

            # E: Copy Agda's output to final MkDocs docs folder
            if agda_processed_md.exists():
                print(f"  Copying Agda output to {mkdocs_final_md.relative_to(PROJECT_ROOT)}", file=sys.stderr)
                shutil.copy2(agda_processed_md, mkdocs_final_md) # copy2 preserves metadata

                # Store path for mkdocs.yml nav section (relative to MKDOCS_DOCS_DIR)
                nav_path = str(relative_path.with_suffix(".md"))
                # Create a default title from path parts
                parts = list(relative_path.parent.parts) + [relative_path.stem]
                nav_title = " / ".join(p.replace('_', ' ').replace('-', ' ').capitalize() for p in parts if p != '.') # Clean up title
                if not nav_title: nav_title = relative_path.stem.capitalize() # Handle root files

                mkdocs_nav_structure[nav_path] = nav_title

            else:
                print(f"Warning: Agda HTML output not found: {agda_processed_md}", file=sys.stderr)

        except Exception as e:
            print(f"Error processing file {relative_path}: {e}", file=sys.stderr)
            # Decide if we want to stop the whole build on one file failing
            # sys.exit(1)
            print("Skipping rest of processing for this file.", file=sys.stderr)


    # 4. Copy Static Assets to MKDOCS_SRC_DIR/docs
    print("\nCopying static assets...", file=sys.stderr)
    # Agda.css
    try:
        agda_css_data_dir_proc = run_command(["agda", "--print-agda-data-dir"], capture_output=True)
        agda_css_source = Path(agda_css_data_dir_proc.stdout.strip()) / "html" / "Agda.css"
        if agda_css_source.exists():
            shutil.copy2(agda_css_source, MKDOCS_CSS_DIR / "Agda.css")
            print(f"  Copied Agda.css", file=sys.stderr)
        else:
            print(f"Warning: Agda.css not found at {agda_css_source}", file=sys.stderr)
    except Exception as e:
         print(f"Warning: Could not get Agda data dir or copy Agda.css: {e}", file=sys.stderr)

    # Custom.css (assuming it's in scripts/css relative to this build script's assumed location)
    custom_css_source = SCRIPTS_DIR / "css" / "custom.css"
    if custom_css_source.exists():
        shutil.copy2(custom_css_source, MKDOCS_CSS_DIR / "custom.css")
        print(f"  Copied custom.css", file=sys.stderr)
    else: print(f"Warning: custom.css not found at {custom_css_source}", file=sys.stderr)

    # Custom.js for toggles (assuming it's in scripts/js)
    custom_js_source = SCRIPTS_DIR / "js" / "custom.js"
    if custom_js_source.exists():
        MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True) # Ensure js dir exists
        shutil.copy2(custom_js_source, MKDOCS_JS_DIR / "custom.js")
        print(f"  Copied custom.js", file=sys.stderr)
    else: print(f"Warning: custom.js not found at {custom_js_source}", file=sys.stderr)


    # Index.md (assuming a template exists in DOCS_TEMPLATE_DIR)
    index_md_template = DOCS_TEMPLATE_DIR / "index.md"
    if index_md_template.exists():
        shutil.copy2(index_md_template, MKDOCS_DOCS_DIR / "index.md")
        print(f"  Copied index.md from template", file=sys.stderr)
        # Ensure 'index.md' is in the nav structure if not already present
        if 'index.md' not in mkdocs_nav_structure:
             mkdocs_nav_structure['index.md'] = "Home" # Add Home if index copied
    elif not any(p == 'index.md' for p in mkdocs_nav_structure.keys()):
        # Create a minimal index if none copied and no other index exists
        with open(MKDOCS_DOCS_DIR / "index.md", "w", encoding="utf-8") as f: f.write("# Welcome\n")
        mkdocs_nav_structure['index.md'] = "Home"
        print(f"  Created minimal index.md", file=sys.stderr)


    # 5. Generate mkdocs.yml in MKDOCS_SRC_DIR
    print("Generating mkdocs.yml...", file=sys.stderr)
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {}

    # Default config structure
    default_config_structure = {
        "site_name": "Agda Ledger Formalization",
        "theme": {"name": "material"},
        "extra_css": ["css/custom.css", "css/Agda.css"],
        "extra_javascript": ["js/custom.js"],
        "markdown_extensions": [
            "admonition",
            {"toc": {"permalink": True}},
            {"pymdownx.superfences": {
                "custom_fences": [{
                    "name": "mermaid", "class": "mermaid",
                    # PyYAML requires this format for safe loading/dumping Python objects if used
                    "format": "!!python/name:pymdownx.superfences.fence_code_format"
                }]
            }},
            "attr_list",
            # Tabbed extension is not needed for the current admonition approach
            # {"pymdownx.tabbed": {"alternate_style": True}}
        ]
    }

    # Try loading template yml
    if MKDOCS_YML_TEMPLATE.exists():
        try:
            if HAS_YAML:
                with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f:
                    mkdocs_config = yaml.safe_load(f) or {}
                print(f"Loaded mkdocs.yml template from {MKDOCS_YML_TEMPLATE}", file=sys.stderr)
                # Merge defaults for keys not present in template
                for key, value in default_config_structure.items():
                    mkdocs_config.setdefault(key, value)
            else:
                 print(f"Warning: Cannot load YAML template without PyYAML. Using default config.", file=sys.stderr)
                 mkdocs_config = default_config_structure
        except Exception as e:
            print(f"Warning: Could not load {MKDOCS_YML_TEMPLATE}, using default config. Error: {e}", file=sys.stderr)
            mkdocs_config = default_config_structure
    else:
        print(f"Warning: mkdocs_template.yml not found at {MKDOCS_YML_TEMPLATE}, using default config.", file=sys.stderr)
        mkdocs_config = default_config_structure


    # Build nav structure - simple sorted list for now
    nav_list = []
    # Ensure Home is first if present
    if 'index.md' in mkdocs_nav_structure:
        nav_list.append({'Home': 'index.md'})
    # Add others, sorted by path
    for path in sorted(mkdocs_nav_structure.keys()):
        if path != 'index.md':
            nav_list.append({mkdocs_nav_structure[path]: path}) # Format as { Title: path.md }

    mkdocs_config['nav'] = nav_list

    # Write the final mkdocs.yml
    try:
        if HAS_YAML: # Use PyYAML if available for better formatting
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f:
                # Use options for better readability if needed
                yaml.dump(mkdocs_config, f, sort_keys=False, default_flow_style=False, allow_unicode=True)
            print(f"Generated mkdocs.yml using PyYAML at {mkdocs_yml_path}", file=sys.stderr)
        else: # Fallback to JSON (less ideal for mkdocs.yml)
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f:
                json.dump(mkdocs_config, f, indent=2)
            print(f"Generated mkdocs.yml as JSON (PyYAML not found) at {mkdocs_yml_path}", file=sys.stderr)
    except Exception as e:
         print(f"Error writing mkdocs.yml: {e}", file=sys.stderr)


    print(f"\nBuild script finished. Source files for MkDocs site are in: {MKDOCS_SRC_DIR}", file=sys.stderr)
    print(f"To serve the site locally, run: mkdocs serve --config-file {mkdocs_yml_path.relative_to(PROJECT_ROOT)}", file=sys.stderr)
    print(f"Or to build static HTML: mkdocs build --config-file {mkdocs_yml_path.relative_to(PROJECT_ROOT)} --site-dir <output_dir>", file=sys.stderr)

if __name__ == "__main__":
    main()
