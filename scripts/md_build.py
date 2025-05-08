# md_build.py
# Purpose: Prepares source files for MkDocs/Shake build.
# 1. Generates macro JSON from .sty file.
# 2. Creates a snapshot of the Agda 'src/' directory.
# 3. For each .lagda file found in 'src/':
#    a. Runs preprocess -> pandoc+lua -> postprocess pipeline.
#    b. Replaces the original .lagda file in the snapshot with the generated .lagda.md.
# 4. (Optional) Assembles a basic MkDocs site source using the generated .lagda.md
#    for previewing the Markdown conversion (without final Agda HTML highlighting).
# Output:
# - _build/preprocess_macros.json
# - _build/docs/agda_snapshot_src/ (Main output for Shake)
# - _build/docs/mkdocs_src/ (Optional, for preview)
# - _build/docs/build.log (Log file)

import os
import sys
import subprocess
import json
import shutil
from pathlib import Path
import logging # Import logging module
# Attempt to import yaml
try:
    import yaml
    HAS_YAML = True
except ImportError:
    HAS_YAML = False

# --- Configuration (Paths from previous agreement) ---
PROJECT_ROOT = Path(__file__).resolve().parent.parent # Assumes md_build.py is in PROJECT_ROOT/scripts/
SRC_DIR = PROJECT_ROOT / "src"                      # Agda source (Input)
DOCS_DIR = PROJECT_ROOT / "docs"                    # Static doc assets source
SCRIPTS_DIR = PROJECT_ROOT / "scripts"              # Location of this script and helpers
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty" # Path to LaTeX macros
DOCS_TEMPLATE_DIR = DOCS_DIR / "templates"          # Source for index.md, mkdocs_template.yml

BUILD_DIR = PROJECT_ROOT / "_build"                 # Top-level build dir
# Put generated macros json in build dir
PREPROCESS_MACROS_JSON = BUILD_DIR / "preprocess_macros.json" # Generated JSON path

BUILD_DOCS_DIR = BUILD_DIR / "docs"                 # Root for docs build intermediates
TEMP_DIR = BUILD_DOCS_DIR / "lagda_temp"            # Intermediate preprocessed LaTeX
CODE_BLOCKS_DIR = BUILD_DOCS_DIR / "code_blocks_json"# Intermediate code block JSONs
INTERMEDIATE_MD_DIR = BUILD_DOCS_DIR / "md_intermediate" # Intermediate Pandoc output MD
FINAL_LAGDA_MD_DIR = BUILD_DOCS_DIR / "final_lagda_md" # Final .lagda.md (input to agda)
# --- NEW: Directory for Agda source snapshot ---
AGDA_SNAPSHOT_SRC_DIR = BUILD_DOCS_DIR / "agda_snapshot_src"

# --- REMOVED AGDA_HTML_OUTPUT_DIR ---

# Optional: Still assemble an interim MkDocs site for preview
MKDOCS_SRC_DIR = BUILD_DOCS_DIR / "mkdocs_src"
MKDOCS_DOCS_DIR = MKDOCS_SRC_DIR / "docs"
MKDOCS_CSS_DIR = MKDOCS_DOCS_DIR / "css"
MKDOCS_JS_DIR = MKDOCS_DOCS_DIR / "js"

# Script paths
GENERATE_MACROS_PY = SCRIPTS_DIR / "md_generate_macros_json.py"
PREPROCESS_PY = SCRIPTS_DIR / "md_preprocess.py"
POSTPROCESS_PY = SCRIPTS_DIR / "md_postprocess.py"
LUA_FILTER = SCRIPTS_DIR / "md_agda-filter.lua"

# Static asset source paths
CUSTOM_CSS_SOURCE = SCRIPTS_DIR / "css" / "custom.css" # Assumes CSS lives near scripts
CUSTOM_JS_SOURCE = SCRIPTS_DIR / "js" / "custom.js"   # Assumes JS lives near scripts
INDEX_MD_TEMPLATE = DOCS_TEMPLATE_DIR / "index.md"
MKDOCS_YML_TEMPLATE = DOCS_TEMPLATE_DIR / "mkdocs_template.yml" # Optional template

# --- Logging Setup ---
LOG_FILE = BUILD_DOCS_DIR / "build.log"

def setup_logging():
    """Configures logging to file and console."""
    BUILD_DOCS_DIR.mkdir(parents=True, exist_ok=True) # Ensure log dir exists
    # Configure root logger
    log_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')
    root_logger = logging.getLogger()
    root_logger.setLevel(logging.DEBUG) # Capture all levels

    # File handler (writes DEBUG level and up)
    file_handler = logging.FileHandler(LOG_FILE, mode='w', encoding='utf-8')
    file_handler.setFormatter(log_formatter)
    file_handler.setLevel(logging.DEBUG)
    root_logger.addHandler(file_handler)

    # Console handler (writes INFO level and up)
    console_handler = logging.StreamHandler(sys.stderr)
    console_handler.setFormatter(log_formatter)
    console_handler.setLevel(logging.INFO)
    root_logger.addHandler(console_handler)

# --- Helper to run commands ---
def run_command(command_args, cwd=None, capture_output=False, text=True, check=True, stdout_file=None):
    """Runs a shell command, logs output/errors, optionally redirects stdout."""
    command_args_str = [str(arg) for arg in command_args]
    logging.info(f"Running: {' '.join(command_args_str)}")

    stdout_target = None
    stdout_content = None
    stderr_content = None

    if stdout_file:
        # Ensure parent directory exists for stdout_file
        Path(stdout_file).parent.mkdir(parents=True, exist_ok=True)
        stdout_target = open(stdout_file, "w", encoding="utf-8")
    elif capture_output:
        stdout_target = subprocess.PIPE

    try:
        process = subprocess.run(command_args_str, cwd=cwd,
                                 stdout=stdout_target,
                                 stderr=subprocess.PIPE, # Always capture stderr
                                 text=text, check=False, # Check manually after logging stderr
                                 encoding='utf-8')
        if stdout_file:
            stdout_target.close() # Ensure file is written and closed

        # Capture outputs if needed
        stdout_content = process.stdout
        stderr_content = process.stderr

        # Log stderr output as debug info, even on success
        if stderr_content:
             logging.debug(f"Stderr output for {' '.join(command_args_str)}:\n{stderr_content}")

        # Check return code if requested
        if check and process.returncode != 0:
            logging.error(f"Command failed with exit code {process.returncode}: {' '.join(command_args_str)}")
            # Log captured stdout only if it wasn't redirected
            if stdout_content and not stdout_file and capture_output: logging.error(f"Stdout:\n{stdout_content}")
            # Log captured stderr again for error context
            if stderr_content: logging.error(f"Stderr:\n{stderr_content}")
            raise subprocess.CalledProcessError(process.returncode, command_args_str,
                                                output=stdout_content, stderr=stderr_content)
        return process # Return completed process object

    except Exception as e:
        logging.error(f"Failed to run command {' '.join(command_args_str)}: {e}")
        raise # Re-raise exception after logging


# --- Main Build Logic ---
def main():
    """Orchestrates the documentation build pipeline up to preparing source for Shake."""
    setup_logging() # Initialize logging

    # 1. Setup Directories
    logging.info("Setting up build directories...")
    shutil.rmtree(BUILD_DIR, ignore_errors=True)
    # Create build subdirectories
    TEMP_DIR.mkdir(parents=True, exist_ok=True)
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)
    FINAL_LAGDA_MD_DIR.mkdir(parents=True, exist_ok=True)
    AGDA_SNAPSHOT_SRC_DIR.mkdir(parents=True, exist_ok=True) # Create snapshot dir

    # Create optional interim MkDocs source structure
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)

    # 2. Generate preprocess_macros.json
    if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
        logging.info(f"Generating {PREPROCESS_MACROS_JSON.name} from {MACROS_STY_PATH.name}...")
        run_command(["python", GENERATE_MACROS_PY, MACROS_STY_PATH, PREPROCESS_MACROS_JSON])
    elif not PREPROCESS_MACROS_JSON.exists():
        logging.error(f"{PREPROCESS_MACROS_JSON.name} not found and cannot be generated.")
        sys.exit(1)
    else:
        logging.info(f"Using existing {PREPROCESS_MACROS_JSON.name}")

    # *** 3. Create Agda Source Snapshot ***
    logging.info(f"Copying Agda source from {SRC_DIR} to snapshot {AGDA_SNAPSHOT_SRC_DIR}...")
    shutil.copytree(SRC_DIR, AGDA_SNAPSHOT_SRC_DIR, dirs_exist_ok=True)
    logging.info("Source copy complete.")

    mkdocs_nav_structure = {} # Collect nav info for interim MkDocs site

    # 4. Find and process all .lagda files from original source
    logging.info(f"Searching for .lagda files in {SRC_DIR}...")
    lagda_files = sorted(list(SRC_DIR.rglob("*.lagda")))
    logging.info(f"Found {len(lagda_files)} .lagda files.")

    if not lagda_files:
        logging.warning("No .lagda files found. Exiting.")
        sys.exit(0)

    for lagda_file_abs_path in lagda_files:
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR)
        logging.info(f"\nProcessing: {relative_path}")

        # Define paths relative to build directories
        current_temp_lagda = TEMP_DIR / relative_path.with_suffix(".lagda.temp")
        current_code_blocks = CODE_BLOCKS_DIR / relative_path.with_suffix(".codeblocks.json")
        current_intermediate_md = INTERMEDIATE_MD_DIR / relative_path.with_suffix(".md.intermediate")
        current_final_lagda_md = FINAL_LAGDA_MD_DIR / relative_path.with_suffix(".lagda.md") # Output of postprocess
        # Target path within the snapshot directory to overwrite original .lagda
        snapshot_target_path = AGDA_SNAPSHOT_SRC_DIR / relative_path.with_suffix(".lagda.md")
        # Target path for interim MkDocs site (uses .lagda.md)
        mkdocs_target_md = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")

        # Create subdirectories if needed (though copytree handles snapshot dirs)
        current_temp_lagda.parent.mkdir(parents=True, exist_ok=True)
        current_code_blocks.parent.mkdir(parents=True, exist_ok=True)
        current_intermediate_md.parent.mkdir(parents=True, exist_ok=True)
        current_final_lagda_md.parent.mkdir(parents=True, exist_ok=True)
        mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)

        # --- Execute Pipeline Steps (up to Postprocess) ---
        try:
            # A: Preprocess
            logging.info(f"  Running md_preprocess.py...")
            run_command([
                "python", PREPROCESS_PY,
                lagda_file_abs_path, PREPROCESS_MACROS_JSON, current_code_blocks
            ], stdout_file=current_temp_lagda)

            # B: Pandoc + Lua
            logging.info(f"  Running Pandoc + Lua...")
            run_command([
                "pandoc", current_temp_lagda,
                "-f", "latex", "-t", "gfm+attributes",
                "--lua-filter", LUA_FILTER,
                "-o", current_intermediate_md
            ])

            # C: Postprocess
            logging.info(f"  Running md_postprocess.py...")
            run_command([
                "python", POSTPROCESS_PY,
                current_intermediate_md, current_code_blocks, current_final_lagda_md
            ])

            # *** D: Copy generated .lagda.md to Snapshot Directory ***
            logging.info(f"  Copying {current_final_lagda_md.name} to snapshot dir {snapshot_target_path.parent.relative_to(PROJECT_ROOT)}...")
            shutil.copy2(current_final_lagda_md, snapshot_target_path)

            # *** E: (Optional) Copy .lagda.md also to Interim MkDocs source ***
            logging.info(f"  Copying {current_final_lagda_md.name} to interim MkDocs source...")
            shutil.copy2(current_final_lagda_md, mkdocs_target_md)

            # Add to nav structure for interim MkDocs site
            nav_path = str(relative_path.with_suffix(".md"))
            parts = list(relative_path.parent.parts) + [relative_path.stem]
            nav_title = " / ".join(p.replace('_', ' ').replace('-', ' ').capitalize() for p in parts if p != '.')
            if not nav_title: nav_title = relative_path.stem.capitalize()
            mkdocs_nav_structure[nav_path] = nav_title

        except Exception as e:
            logging.error(f"Error processing file {relative_path}: {e}", exc_info=True)
            logging.warning("Skipping rest of processing for this file.")
            # Continue processing next file

    # --- Assemble Interim MkDocs Site Source (Optional Preview) ---
    logging.info("\nAssembling interim MkDocs source directory...")
    # Copy static assets
    # Agda.css - Not needed for this interim site, only for final Agda HTML output
    # Custom.css
    if CUSTOM_CSS_SOURCE.exists(): shutil.copy2(CUSTOM_CSS_SOURCE, MKDOCS_CSS_DIR / "custom.css"); logging.info("  Copied custom.css")
    else: logging.warning(f"custom.css not found at {CUSTOM_CSS_SOURCE}")
    # Custom.js
    if CUSTOM_JS_SOURCE.exists(): shutil.copy2(CUSTOM_JS_SOURCE, MKDOCS_JS_DIR / "custom.js"); logging.info("  Copied custom.js")
    else: logging.warning(f"custom.js not found at {CUSTOM_JS_SOURCE}")
    # Index.md
    if INDEX_MD_TEMPLATE.exists(): shutil.copy2(INDEX_MD_TEMPLATE, MKDOCS_DOCS_DIR / "index.md"); logging.info("  Copied index.md")
    else: logging.warning(f"index.md template not found at {INDEX_MD_TEMPLATE}")
    if 'index.md' not in mkdocs_nav_structure and (MKDOCS_DOCS_DIR / "index.md").exists():
        mkdocs_nav_structure['index.md'] = "Home"

    # Generate mkdocs.yml for the interim site
    logging.info("Generating mkdocs.yml for interim site...")
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {}
    default_cfg = {
        "site_name": "Agda Ledger Docs (Interim Preview)",
        "theme": {"name": "material"},
        "extra_css": ["css/custom.css"], # No Agda.css needed here
        "extra_javascript": ["js/custom.js"],
        "markdown_extensions": [
            "admonition", {"toc": {"permalink": True}},
            {"pymdownx.superfences": {}}, # Keep for basic fences
            "attr_list"
        ]
    }
    if MKDOCS_YML_TEMPLATE.exists() and HAS_YAML:
        try:
            with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f: mkdocs_config = yaml.safe_load(f) or {}
            for key, value in default_cfg.items(): mkdocs_config.setdefault(key, value)
        except Exception as e: logging.warning(f"Failed loading template {MKDOCS_YML_TEMPLATE}: {e}. Using defaults."); mkdocs_config = default_cfg
    else: mkdocs_config = default_cfg

    # Build simple nav
    nav_list = []
    if 'index.md' in mkdocs_nav_structure: nav_list.append({'Home': 'index.md'})
    for path in sorted(mkdocs_nav_structure.keys()):
        if path != 'index.md': nav_list.append({mkdocs_nav_structure[path]: path})
    mkdocs_config['nav'] = nav_list

    # Write mkdocs.yml
    try:
        if HAS_YAML:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f: yaml.dump(mkdocs_config, f, sort_keys=False, default_flow_style=False, allow_unicode=True)
            logging.info(f"Generated interim mkdocs.yml using PyYAML at {mkdocs_yml_path}")
        else: # Fallback to JSON
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f: json.dump(mkdocs_config, f, indent=2)
            logging.warning(f"Generated interim mkdocs.yml as JSON (PyYAML not found) at {mkdocs_yml_path}")
    except Exception as e: logging.error(f"Error writing mkdocs.yml: {e}")

    # --- Final Message ---
    logging.info(f"\nBuild script finished.")
    logging.info(f"Primary output for Shake/Agda: {AGDA_SNAPSHOT_SRC_DIR}")
    logging.info(f"Optional interim MkDocs preview source: {MKDOCS_SRC_DIR}")
    logging.info(f"Full log saved to: {LOG_FILE}")

if __name__ == "__main__":
    main()
