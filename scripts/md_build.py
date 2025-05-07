# md_build.py
import os
import sys
import subprocess
import json
import shutil
from pathlib import Path

# --- Configuration ---
# Assuming this build.py script is in the project root, alongside 'src', 'scripts', etc.
PROJECT_ROOT = Path(__file__).resolve().parent
SRC_DIR = PROJECT_ROOT / "src"  # our main Agda source directory
SCRIPTS_DIR = PROJECT_ROOT / "scripts"
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty"

# Output directories (will be created under BUILD_DIR)
BUILD_DIR = PROJECT_ROOT / "build_docs"
TEMP_DIR = BUILD_DIR / "temp"                          # for .lagda.temp
CODE_BLOCKS_DIR = BUILD_DIR / "code_blocks"            # for .codeblocks.json
INTERMEDIATE_MD_DIR = BUILD_DIR / "intermediate_md"    # for .md.intermediate
FINAL_LAGDA_MD_DIR = BUILD_DIR / "final_lagda_md"      # for .lagda.md (input to agda --html)
AGDA_HTML_OUTPUT_DIR = BUILD_DIR / "agda_html_output"  # output of agda --html

MKDOCS_SRC_DIR = PROJECT_ROOT / "mkdocs_build_source"  # final source for mkdocs
MKDOCS_DOCS_DIR = MKDOCS_SRC_DIR / "docs"
MKDOCS_CSS_DIR = MKDOCS_DOCS_DIR / "css"

# Script paths
GENERATE_MACROS_PY = SCRIPTS_DIR / "generate_macro_json.py"
PREPROCESS_PY = SCRIPTS_DIR / "preprocess.py"
POSTPROCESS_PY = SCRIPTS_DIR / "postprocess.py"
LUA_FILTER = SCRIPTS_DIR / "agda-filter.lua"
PREPROCESS_MACROS_JSON = SCRIPTS_DIR / "preprocess_macros.json" # output of generate_macro_json.py

# --- Helper to run commands ---
def run_command(command, cwd=None, capture_output=False, text=True, check=True):
    """Runs a shell command."""
    print(f"Running: {' '.join(command)}", file=sys.stderr)
    return subprocess.run(command, cwd=cwd, capture_output=capture_output, text=text, check=check)

# --- Main Build Logic ---
def main():
    # 1. Setup Directories
    print("Setting up build directories...", file=sys.stderr)
    shutil.rmtree(BUILD_DIR, ignore_errors=True)
    shutil.rmtree(MKDOCS_SRC_DIR, ignore_errors=True)
    TEMP_DIR.mkdir(parents=True, exist_ok=True)
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)
    FINAL_LAGDA_MD_DIR.mkdir(parents=True, exist_ok=True)
    AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)

    # 2. Generate preprocess_macros.json
    if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
        print(f"Generating {PREPROCESS_MACROS_JSON} from {MACROS_STY_PATH}...", file=sys.stderr)
        run_command(["python", str(GENERATE_MACROS_PY), str(MACROS_STY_PATH), str(PREPROCESS_MACROS_JSON)])
    elif not PREPROCESS_MACROS_JSON.exists():
        print(f"Error: {PREPROCESS_MACROS_JSON} not found and {GENERATE_MACROS_PY} or {MACROS_STY_PATH} missing.", file=sys.stderr)
        sys.exit(1)
    else:
        print(f"Using existing {PREPROCESS_MACROS_JSON}", file=sys.stderr)

    mkdocs_nav_paths = [] # To collect paths for mkdocs.yml nav section

    # 3. Find and process all .lagda files
    print(f"Searching for .lagda files in {SRC_DIR}...", file=sys.stderr)
    lagda_files = sorted(list(SRC_DIR.rglob("*.lagda"))) # use rglob for recursive search
    print(f"Found {len(lagda_files)} .lagda files.", file=sys.stderr)

    for lagda_file_abs_path in lagda_files:
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR)
        base_name = relative_path.stem # filename without extension
        # Define output paths for this file, preserving subdirectory structure
        current_temp_dir = TEMP_DIR / relative_path.parent
        current_code_blocks_dir = CODE_BLOCKS_DIR / relative_path.parent
        current_intermediate_md_dir = INTERMEDIATE_MD_DIR / relative_path.parent
        current_final_lagda_md_dir = FINAL_LAGDA_MD_DIR / relative_path.parent
        # Agda --html places output relative to --html-dir
        current_agda_html_output_md = AGDA_HTML_OUTPUT_DIR / relative_path.with_suffix(".md")


        # Create subdirectories if they don't exist
        current_temp_dir.mkdir(parents=True, exist_ok=True)
        current_code_blocks_dir.mkdir(parents=True, exist_ok=True)
        current_intermediate_md_dir.mkdir(parents=True, exist_ok=True)
        current_final_lagda_md_dir.mkdir(parents=True, exist_ok=True)
        current_agda_html_output_md.parent.mkdir(parents=True, exist_ok=True)


        print(f"\nProcessing: {lagda_file_abs_path}", file=sys.stderr)

        # Define intermediate filenames
        temp_lagda_file = current_temp_dir / f"{base_name}.lagda.temp"
        code_blocks_json_file = current_code_blocks_dir / f"{base_name}.codeblocks.json"
        intermediate_md_file = current_intermediate_md_dir / f"{base_name}.md.intermediate"
        final_lagda_md_file = current_final_lagda_md_dir / f"{base_name}.lagda.md" # input for Agda

        # A. Preprocess
        with open(temp_lagda_file, "w", encoding="utf-8") as f_out:
            run_command([
                "python", str(PREPROCESS_PY),
                str(lagda_file_abs_path),
                str(PREPROCESS_MACROS_JSON),
                str(code_blocks_json_file)
            ], stdout=f_out) # redirect stdout to file

        # B. Pandoc + Lua
        run_command([
            "pandoc", str(temp_lagda_file),
            "-f", "latex",
            "-t", "gfm+attributes",
            "--lua-filter", str(LUA_FILTER),
            "-o", str(intermediate_md_file)
        ])

        # C. Postprocess
        run_command([
            "python", str(POSTPROCESS_PY),
            str(intermediate_md_file),
            str(code_blocks_json_file),
            str(final_lagda_md_file)
        ])

        # D. Agda --html
        # Run Agda from project root so -i src works as expected.
        # Input to Agda is the .lagda.md file produced by postprocess.py
        run_command([
            "agda", "--html", "--html-highlight=code",
            f"--html-dir={str(AGDA_HTML_OUTPUT_DIR)}", # absolute or relative to working dir (cwd)
            "-i", str(SRC_DIR), # Agda include path
            str(final_lagda_md_file) # file to process
        ], cwd=PROJECT_ROOT) # run Agda from project root

        # E. Copy final Agda-processed MD to MkDocs docs folder
        mkdocs_target_md_path = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")
        mkdocs_target_md_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy(current_agda_html_output_md, mkdocs_target_md_path)

        # Store path for mkdocs.yml nav section (relative to MKDOCS_DOCS_DIR)
        nav_path = str(relative_path.with_suffix(".md"))
        # Create title for the nav
        nav_title_parts = [part.capitalize() for part in relative_path.parent.parts]
        nav_title_parts.append(base_name.replace('_', ' ').replace('-', ' ').capitalize())
        nav_title = " / ".join(nav_title_parts) if nav_title_parts else base_name.capitalize()

        mkdocs_nav_paths.append({"title": nav_title, "path": nav_path})


    # 4. Copy static assets
    print("Copying static assets...", file=sys.stderr)
    # Agda.css
    agda_css_source = Path(run_command(["agda", "--print-agda-data-dir"], capture_output=True).stdout.strip()) / "html" / "Agda.css"
    if agda_css_source.exists():
        shutil.copy(agda_css_source, MKDOCS_CSS_DIR / "Agda.css")
    else:
        print(f"Warning: Agda.css not found at {agda_css_source}", file=sys.stderr)
    # custom.css
    custom_css_source = SCRIPTS_DIR / "css" / "custom.css"
    if custom_css_source.exists():
        shutil.copy(custom_css_source, MKDOCS_CSS_DIR / "custom.css")
    # index.md (assume it's in project_root/docs for now)
    index_md_source = PROJECT_ROOT / "docs_template" / "index.md" # create template dir
    if index_md_source.exists():
        shutil.copy(index_md_source, MKDOCS_DOCS_DIR / "index.md")
        if not any(item['path'] == 'index.md' for item in mkdocs_nav_paths):
             mkdocs_nav_paths.insert(0, {"title": "Home", "path": "index.md"})


    # 5. Generate mkdocs.yml
    print("Generating mkdocs.yml...", file=sys.stderr)
    # Basic mkdocs.yml structure (can be expanded or loaded from a template)
    mkdocs_config = {
        "site_name": "Agda Ledger Formalization (MkDocs PoC)",
        "theme": {"name": "material"},
        "extra_css": ["css/custom.css", "css/Agda.css"],
        "extra_javascript": ["js/custom.js"], # custom.js for toggle
        "markdown_extensions": [
            "admonition",
            {"toc": {"permalink": True}},
            {"pymdownx.superfences": {
                "custom_fences": [{
                    "name": "mermaid", "class": "mermaid", "format": "!!python/name:pymdownx.superfences.fence_code_format"
                }]
            }},
            "attr_list",
            "pymdownx.tabbed" # (in case we want Conway/NoConway prose in tabs)
        ],
        "nav": []
    }
    # Build nav structure.
    # Simple flat nav for now (nested structure will require more logic)
    for item in sorted(mkdocs_nav_paths, key=lambda x: x['path']): # Sort for consistent nav
        mkdocs_config["nav"].append({item['title']: item['path']})

    # ruamel.yaml for pretty YAML output or simple json.dump if pyyaml not wanted
    try:
        import yaml # using pyyaml
        with open(MKDOCS_SRC_DIR / "mkdocs.yml", "w", encoding="utf-8") as f:
            yaml.dump(mkdocs_config, f, sort_keys=False)
    except ImportError:
        print("Warning: PyYAML not installed, mkdocs.yml will be basic JSON format.", file=sys.stderr)
        # Fallback to JSON which is not ideal for mkdocs.yml
        with open(MKDOCS_SRC_DIR / "mkdocs.yml", "w", encoding="utf-8") as f:
            json.dump(mkdocs_config, f, indent=2)


    print(f"\nBuild complete. MkDocs source generated in: {MKDOCS_SRC_DIR}", file=sys.stderr)
    print(f"To serve the site, cd to '{MKDOCS_SRC_DIR}' and run 'mkdocs serve'", file=sys.stderr)
    print(f"or to build static HTML: cd to '{MKDOCS_SRC_DIR}' and run 'mkdocs build'", file=sys.stderr)

if __name__ == "__main__":
    main()
