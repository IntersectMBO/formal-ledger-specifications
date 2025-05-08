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
import argparse # To handle optional --run-agda flag
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
AGDA_SNAPSHOT_SRC_DIR = BUILD_DOCS_DIR / "agda_snapshot_src" # For Shake/Agda context
AGDA_HTML_OUTPUT_DIR = BUILD_DOCS_DIR / "agda_html_output" # Agda --html output

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

# *** REVISED Logging Setup ***
def setup_logging():
    """Configures logging to file (DEBUG) and console (INFO) without basicConfig."""
    BUILD_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    log_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')

    # Get root logger
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG) # Set lowest level for logger itself

    # Clear existing handlers (important if this function could be called multiple times)
    if logger.hasHandlers():
        logger.handlers.clear()

    # File handler (DEBUG level)
    try:
        file_handler = logging.FileHandler(LOG_FILE, mode='w', encoding='utf-8')
        file_handler.setFormatter(log_formatter)
        file_handler.setLevel(logging.DEBUG)
        logger.addHandler(file_handler)
    except Exception as e:
        print(f"Error setting up file logging to {LOG_FILE}: {e}", file=sys.stderr)


    # Console handler (INFO level)
    console_handler = logging.StreamHandler(sys.stderr)
    console_handler.setFormatter(log_formatter)
    console_handler.setLevel(logging.INFO) # Only show INFO and above on console
    logger.addHandler(console_handler)

    logging.info("Logging setup complete. Log file: %s", LOG_FILE)

# --- Helper to run commands ---
def run_command(command_args, cwd=None, capture_output=False, text=True, check=True, stdout_file=None):
    """Runs a shell command, logs output/errors, optionally redirects stdout."""
    command_args_str = [str(arg) for arg in command_args]
    logging.info(f"Running: {' '.join(command_args_str)}")
    stdout_target = None; stdout_content = None; stderr_content = None
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
            # Log captured stdout only if it wasn't redirected and was captured
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
def main(run_agda_html=False): # Add flag argument
    """Orchestrates the documentation build pipeline up to preparing source for Shake/Agda."""
    setup_logging() # Initialize logging

    try: # Wrap main logic in try...finally for shutdown
        # 1. Setup Directories
        logging.info("Setting up build directories...")
        shutil.rmtree(BUILD_DIR, ignore_errors=True)
        # Create build subdirectories
        TEMP_DIR.mkdir(parents=True, exist_ok=True)
        CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)
        INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)
        FINAL_LAGDA_MD_DIR.mkdir(parents=True, exist_ok=True)
        AGDA_SNAPSHOT_SRC_DIR.mkdir(parents=True, exist_ok=True)
        if run_agda_html: AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
        MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
        MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)
        MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)

        # 2. Generate preprocess_macros.json
        if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
             logging.info(f"Generating {PREPROCESS_MACROS_JSON.name}...")
             run_command(["python", GENERATE_MACROS_PY, MACROS_STY_PATH, PREPROCESS_MACROS_JSON])
        elif not PREPROCESS_MACROS_JSON.exists():
             logging.error(f"{PREPROCESS_MACROS_JSON.name} not found and cannot be generated."); sys.exit(1)
        else: logging.info(f"Using existing {PREPROCESS_MACROS_JSON.name}")


        # 3. Create Agda Source Snapshot
        logging.info(f"Creating Agda source snapshot...")
        shutil.copytree(SRC_DIR, AGDA_SNAPSHOT_SRC_DIR, dirs_exist_ok=True)
        logging.info("Source copy complete.")


        # 4. Generate snapshot .agda-lib file
        agda_lib_dependencies = [
            "standard-library",
            "standard-library-classes",
            "standard-library-meta",
            "abstract-set-theory"
        ]
        agda_lib_content = f"name: snapshot-build\ninclude: .\ndepend: {' '.join(agda_lib_dependencies)}\n"
        snapshot_lib_file = AGDA_SNAPSHOT_SRC_DIR / f"{AGDA_SNAPSHOT_SRC_DIR.name}.agda-lib"
        try:
            with open(snapshot_lib_file, "w", encoding="utf-8") as f: f.write(agda_lib_content)
            logging.info(f"Generated {snapshot_lib_file.name} in snapshot directory.")
        except Exception as e: logging.error(f"Failed to write {snapshot_lib_file.name}: {e}"); sys.exit(1)


        mkdocs_nav_structure = {}
        processed_lagda_md_files_in_snapshot = []

        # 5. Find and process all .lagda files
        logging.info(f"Searching for .lagda files in {SRC_DIR}...")
        lagda_files = sorted(list(SRC_DIR.rglob("*.lagda")))
        logging.info(f"Found {len(lagda_files)} .lagda files.")
        if not lagda_files: logging.warning("No .lagda files found.")

        for lagda_file_abs_path in lagda_files:
            relative_path = lagda_file_abs_path.relative_to(SRC_DIR)
            logging.info(f"\nProcessing: {relative_path}")
            # Define paths
            current_temp_lagda = TEMP_DIR / relative_path.with_suffix(".lagda.temp")
            current_code_blocks = CODE_BLOCKS_DIR / relative_path.with_suffix(".codeblocks.json")
            current_intermediate_md = INTERMEDIATE_MD_DIR / relative_path.with_suffix(".md.intermediate")
            current_final_lagda_md = FINAL_LAGDA_MD_DIR / relative_path.with_suffix(".lagda.md")
            snapshot_original_lagda = AGDA_SNAPSHOT_SRC_DIR / relative_path
            snapshot_target_path = AGDA_SNAPSHOT_SRC_DIR / relative_path.with_suffix(".lagda.md")
            mkdocs_interim_md_target = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")
            # Create dirs
            current_temp_lagda.parent.mkdir(parents=True, exist_ok=True)
            current_code_blocks.parent.mkdir(parents=True, exist_ok=True)
            current_intermediate_md.parent.mkdir(parents=True, exist_ok=True)
            current_final_lagda_md.parent.mkdir(parents=True, exist_ok=True)
            snapshot_target_path.parent.mkdir(parents=True, exist_ok=True)
            mkdocs_interim_md_target.parent.mkdir(parents=True, exist_ok=True)
            try:
                # Pipeline steps
                logging.info(f"  Running md_preprocess.py...")
                run_command(["python", PREPROCESS_PY, lagda_file_abs_path, PREPROCESS_MACROS_JSON, current_code_blocks], stdout_file=current_temp_lagda)
                logging.info(f"  Running Pandoc + Lua...")
                run_command(["pandoc", current_temp_lagda, "-f", "latex", "-t", "gfm+attributes", "--lua-filter", LUA_FILTER, "-o", current_intermediate_md])
                logging.info(f"  Running md_postprocess.py...")
                run_command(["python", POSTPROCESS_PY, current_intermediate_md, current_code_blocks, current_final_lagda_md])
                # Snapshot handling
                if snapshot_original_lagda.is_file():
                     logging.info(f"  Removing original {snapshot_original_lagda.name} from snapshot...")
                     snapshot_original_lagda.unlink()
                elif snapshot_original_lagda.exists(): logging.warning(f"  Cannot remove non-file from snapshot: {snapshot_original_lagda}")
                logging.info(f"  Copying {current_final_lagda_md.name} to snapshot dir...")
                shutil.copy2(current_final_lagda_md, snapshot_target_path)
                processed_lagda_md_files_in_snapshot.append(snapshot_target_path)
                # Nav info
                nav_path = str(relative_path.with_suffix(".md"))
                parts = list(relative_path.parent.parts) + [relative_path.stem]; nav_title = " / ".join(p.replace('_', ' ').replace('-', ' ').capitalize() for p in parts if p != '.');
                if not nav_title: nav_title = relative_path.stem.capitalize()
                mkdocs_nav_structure[nav_path] = nav_title
            except Exception as e: logging.error(f"Error processing file {relative_path}: {e}", exc_info=True); logging.warning("Skipping further processing.") ; continue


        # --- Optional Step: Agda --html ---
        final_md_files_for_mkdocs = []
        agda_step_succeeded_fully = True
        if run_agda_html:
            logging.info(f"\nRunning agda --html on processed files in snapshot...")
            AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

            # Run Agda on each processed .lagda.md file within the snapshot directory
            # Note: Agda might be smarter if run on just the top-level modules,
            # but processing each ensures all are attempted.
            for lagda_md_in_snapshot in processed_lagda_md_files_in_snapshot:
                relative_path = lagda_md_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR)
                # Agda output path relative to AGDA_HTML_OUTPUT_DIR
                agda_html_processed_md = AGDA_HTML_OUTPUT_DIR / relative_path.with_suffix(".md")
                mkdocs_target_md = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")  # Final target in MkDocs dir

                logging.info(f"  Processing {relative_path} with Agda...")
                try:
                    # Run Agda with the snapshot directory as CWD, using the generated .agda-lib
                    run_command([
                        "agda", "--html", "--html-highlight=code",
                        f"--html-dir={AGDA_HTML_OUTPUT_DIR.resolve()}", # Output dir
                        # Include path relative to CWD (snapshot root) is "."
                        "-i", ".",
                        str(lagda_md_in_snapshot.resolve()) # Input file
                    ], cwd=AGDA_SNAPSHOT_SRC_DIR.resolve()) # CWD is snapshot root

                    # Copy Agda's output to final MkDocs docs folder
                    mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)
                    if agda_html_processed_md.exists():
                       shutil.copy2(agda_html_processed_md, mkdocs_target_md)
                       final_md_files_for_mkdocs.append(relative_path.with_suffix(".md"))
                    else:
                        logging.warning(f"Agda HTML output not found: {agda_html_processed_md}")

                except Exception as e:
                    logging.error(f"Agda --html failed for {relative_path}: {e}", exc_info=True)
                    logging.warning("Skipping Agda step for this file. Copying intermediate .lagda.md instead.")
                    # Copy the non-Agda-processed .lagda.md as fallback
                    mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)
                    agda_step_succeeded_fully = False
                    shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md)
                    final_md_files_for_mkdocs.append(relative_path.with_suffix(".md")) # Fallback copy
        else:
            # If not running Agda step, copy the .lagda.md files directly
            logging.info("\nSkipping agda --html step.")
            logging.info("Copying final *.lagda.md files to MkDocs source...")
            for lagda_md_in_final_dir in FINAL_LAGDA_MD_DIR.rglob("*.lagda.md"):
                 relative_path = lagda_md_in_final_dir.relative_to(FINAL_LAGDA_MD_DIR)
                 mkdocs_target_md = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md") # Save as .md
                 mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)
                 shutil.copy2(lagda_md_in_final_dir, mkdocs_target_md)
                 final_md_files_for_mkdocs.append(relative_path.with_suffix(".md"))


        # --- Assemble Interim/Final MkDocs Site Source ---
        logging.info("\nAssembling MkDocs source directory...")
        # Copy static assets
        assets_to_copy = {}
        agda_css_target = MKDOCS_CSS_DIR / "Agda.css"
        if run_agda_html:
            # Only copy Agda.css if Agda step ran
            try:
                agda_css_proc = run_command(["agda", "--print-agda-data-dir"], capture_output=True, check=False) # Don't fail build if Agda cmd fails here
                if agda_css_proc.returncode == 0:
                    agda_css_source = Path(agda_css_proc.stdout.strip()) / "html" / "Agda.css"
                    if agda_css_source.exists(): assets_to_copy[agda_css_source] = agda_css_target
                    else: logging.warning(f"Agda.css not found at {agda_css_source}")
                else: logging.warning(f"Could not run 'agda --print-agda-data-dir' to find Agda.css.")
            except Exception as e: logging.warning(f"Could not get Agda data dir / Agda.css: {e}")

        if CUSTOM_CSS_SOURCE.exists(): assets_to_copy[CUSTOM_CSS_SOURCE] = MKDOCS_CSS_DIR / "custom.css"
        else: logging.warning(f"custom.css not found at {CUSTOM_CSS_SOURCE}")
        if CUSTOM_JS_SOURCE.exists(): assets_to_copy[CUSTOM_JS_SOURCE] = MKDOCS_JS_DIR / "custom.js"
        else: logging.warning(f"custom.js not found at {CUSTOM_JS_SOURCE}")
        if INDEX_MD_TEMPLATE.exists(): assets_to_copy[INDEX_MD_TEMPLATE] = MKDOCS_DOCS_DIR / "index.md"
        else: logging.warning(f"index.md template not found at {INDEX_MD_TEMPLATE}")

        for src, dest in assets_to_copy.items():
            try:
                logging.info(f"  Copying {src.name} to {dest.relative_to(PROJECT_ROOT)}")
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dest)
            except Exception as e: logging.error(f"Failed to copy asset {src}: {e}")

        # Ensure index.md exists and update nav map
        mkdocs_index_path_rel = Path("index.md"); mkdocs_index_path_abs = MKDOCS_DOCS_DIR / mkdocs_index_path_rel; nav_has_index = mkdocs_index_path_rel in final_md_files_for_mkdocs
        if not mkdocs_index_path_abs.exists() and not nav_has_index:
            logging.warning(f"index.md missing, creating minimal version.")
            with open(mkdocs_index_path_abs, "w", encoding="utf-8") as f: f.write("# Welcome\n")
            mkdocs_nav_structure[str(mkdocs_index_path_rel)] = "Home"
        elif mkdocs_index_path_abs.exists() and not nav_has_index: mkdocs_nav_structure[str(mkdocs_index_path_rel)] = "Home"

        # Generate mkdocs.yml
        logging.info("Generating final mkdocs.yml...")
        mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
        mkdocs_config = {}; default_cfg = {"site_name": "Agda Ledger Formalization", "theme": {"name": "material"}, "extra_css": ["css/custom.css"], "extra_javascript": ["js/custom.js"], "markdown_extensions": ["admonition", {"toc": {"permalink": True}}, {"pymdownx.superfences": {}}, "attr_list"]}
        if run_agda_html and agda_css_target.exists(): default_cfg["extra_css"].append("css/Agda.css")
        # Load template or use default
        if MKDOCS_YML_TEMPLATE.exists() and HAS_YAML:
             try:
                 with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f: mkdocs_config = yaml.safe_load(f) or {}
                 for key, value in default_cfg.items(): # Merge defaults
                      if key in ['extra_css', 'extra_javascript', 'markdown_extensions']: mkdocs_config.setdefault(key, []).extend(v for v in value if v not in mkdocs_config[key])
                      else: mkdocs_config.setdefault(key, value)
                 logging.info(f"Loaded/merged mkdocs.yml template from {MKDOCS_YML_TEMPLATE}")
             except Exception as e: logging.warning(f"Failed loading template {MKDOCS_YML_TEMPLATE}: {e}. Using defaults."); mkdocs_config = default_cfg
        else: mkdocs_config = default_cfg

        # Build nav structure
        nav_list = []; mkdocs_index_path_str = str(Path("index.md")) # Use string for comparison
        if mkdocs_index_path_str in mkdocs_nav_structure: nav_list.append({'Home': mkdocs_index_path_str})
        for path_str in sorted(mkdocs_nav_structure.keys()):
            if path_str != mkdocs_index_path_str: nav_list.append({mkdocs_nav_structure[path_str]: path_str})
        mkdocs_config['nav'] = nav_list

        # Write mkdocs.yml
        # ... (write using PyYAML or fallback as before) ...
        try:
            if HAS_YAML:
                with open(mkdocs_yml_path, "w", encoding="utf-8") as f: yaml.dump(mkdocs_config, f, sort_keys=False, default_flow_style=False, allow_unicode=True)
                logging.info(f"Generated mkdocs.yml using PyYAML at {mkdocs_yml_path}")
            else:
                with open(mkdocs_yml_path, "w", encoding="utf-8") as f: json.dump(mkdocs_config, f, indent=2)
                logging.warning(f"Generated mkdocs.yml as JSON (PyYAML not found) at {mkdocs_yml_path}")
        except Exception as e: logging.error(f"Error writing mkdocs.yml: {e}")


        # --- Final Message ---
        logging.info(f"\nBuild script finished successfully.")
        logging.info(f"Primary output for Shake/Agda (if Agda step skipped): {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}")
        logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
        logging.info(f"Full log saved to: {LOG_FILE.relative_to(PROJECT_ROOT)}")
        logging.info(f"To serve the site locally: mkdocs serve --config-file {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")

    except Exception as e:
        logging.exception("Build script failed with an error.") # Log traceback on major failure
        sys.exit(1)
    finally:
        logging.shutdown() # Ensure logs are flushed regardless of errors

if __name__ == "__main__":
    # Add command line argument parsing
    parser = argparse.ArgumentParser(description="Build MkDocs site source from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run the 'agda --html' step after postprocessing."
    )
    args = parser.parse_args()

    main(run_agda_html=args.run_agda)
