# build.py
#
# Purpose: Prepare source files for MkDocs/Shake build.
#
# 1. Generate macro JSON from .sty file.
# 2. Create snapshot of the Agda 'src/' directory.
# 3. Convert each `.agda` file to a literate `.lagda.md` file.
# 4. For each `.lagda` file found in 'src/':
#    a. Run preprocess -> pandoc+lua -> postprocess pipeline.
#    b. Replace original `.lagda` file in the snapshot with the generated `.lagda.md`.
# 5. Assemble a basic mkdocs site.
# 6. (Optional) If `--run-agda` flag passed, then run `agda --html` on
#    each `.lagda.md` file to produce `.md` files for mkdocs site.
#
# Usage: from the main project directory,
#        `python ./scripts/mkdocs/build.py [--run-agda]`
#
# Output:
# - _build/mkdocs/macros.json
# - _build/mkdocs/agda_snapshot_src/ (Main output for Shake)
# - _build/mkdocs/mkdocs_src/
# - _build/mkdocs/build.log (Log file)

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

# --- Configuration ---
PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent # Assumes build.py is in PROJECT_ROOT/scripts/mkdocs
SRC_DIR = PROJECT_ROOT / "src"                               # Agda source (input)
STATIC_MKDOCS_DIR = PROJECT_ROOT / "mkdocs"                  # static mkdocs assets
SCRIPTS_DIR = PROJECT_ROOT / "scripts" / "mkdocs"            # location of this script and helpers
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty"          # path to LaTeX macros
DOCS_TEMPLATE_DIR = STATIC_MKDOCS_DIR / "templates"                   # source for index.md, mkdocs_template.yml
BUILD_DIR = PROJECT_ROOT / "_build"                          # top-level build dir

BUILD_MKDOCS_DIR = BUILD_DIR / "mkdocs"                      # root for mkdocs build intermediate products

MACROS_JSON = BUILD_MKDOCS_DIR / "macros.json"               # macro JSONs: output of generate_macros_json.py
                                                             #              input to preprocess.py
TEMP_DIR = BUILD_MKDOCS_DIR / "lagda_temp"                   # intermediate latex: output of preprocess.py
                                                             #                     input to pandoc+lua
CODE_BLOCKS_DIR = BUILD_MKDOCS_DIR / "code_blocks_json"      # code block JSONs: output of preprocess.py
                                                             #                   input to postprocess.py
INTERMEDIATE_MD_DIR = BUILD_MKDOCS_DIR / "md_intermediate"   # intermediate `.lagda.md`: output of pandoc+lua
                                                             #                           intput to postprocess.py
FINAL_LAGDA_MD_DIR = BUILD_MKDOCS_DIR / "final_lagda_md"     # final `.lagda.md`: output of postprocess.py
                                                             #                    input to `agda --html`

# --- Directories for Agda source snapshot and html output ---
AGDA_SNAPSHOT_SRC_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_src" # for Shake/Agda context
AGDA_HTML_OUTPUT_DIR = BUILD_MKDOCS_DIR / "agda_html_output"   # for `agda --html` output

# Optional: Still assemble an interim MkDocs site for preview
MKDOCS_SRC_DIR = BUILD_MKDOCS_DIR / "mkdocs_src"
MKDOCS_DOCS_DIR = MKDOCS_SRC_DIR / "docs"
MKDOCS_CSS_DIR = MKDOCS_DOCS_DIR / "css"
MKDOCS_JS_DIR = MKDOCS_DOCS_DIR / "js"

# Script paths
GENERATE_MACROS_PY = SCRIPTS_DIR / "generate_macros_json.py"
PREPROCESS_PY = SCRIPTS_DIR / "preprocess.py"
POSTPROCESS_PY = SCRIPTS_DIR / "postprocess.py"
LUA_FILTER = SCRIPTS_DIR / "agda-filter.lua"

# Static asset source paths
CUSTOM_CSS_SOURCE = STATIC_MKDOCS_DIR / "css" / "custom.css" # Assumes CSS lives near scripts
CUSTOM_JS_SOURCE = STATIC_MKDOCS_DIR / "js" / "custom.js"   # Assumes JS lives near scripts
INDEX_MD_TEMPLATE = DOCS_TEMPLATE_DIR / "index.md"
MKDOCS_YML_TEMPLATE = DOCS_TEMPLATE_DIR / "mkdocs_template.yml" # Optional template

# --- Logging Setup ---
LOG_FILE = BUILD_MKDOCS_DIR / "build.log"

# *** REVISED Logging Setup ***
def setup_logging():
    """Configures logging to file (DEBUG) and console (INFO) without basicConfig."""
    BUILD_MKDOCS_DIR.mkdir(parents=True, exist_ok=True)
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


def build_nested_nav(file_paths, mkdocs_docs_dir_path):
    nav_tree = {}
    processed_paths = set()

    home_item = None
    # Ensure index.md is handled as 'Home' and is first
    # Check if index.md is in the list of files to be added to nav or exists in docs dir
    # Convert mkdocs_docs_dir_path to Path if it's a string
    mkdocs_docs_dir = Path(mkdocs_docs_dir_path)
    potential_index_path_str = "index.md" # Relative path string

    if potential_index_path_str in file_paths or (mkdocs_docs_dir / potential_index_path_str).exists():
        home_item = {'Home': potential_index_path_str}
        processed_paths.add(potential_index_path_str)

    sorted_file_paths = sorted(p for p in file_paths if p not in processed_paths)

    for file_path_str in sorted_file_paths:
        if file_path_str in processed_paths: # Should ideally not happen with unique file_paths
            continue
        processed_paths.add(file_path_str)

        path_obj = Path(file_path_str)
        parts = list(path_obj.parent.parts)  # Directory components, e.g., ["Ledger", "Certs"]
        filename_stem = path_obj.stem        # File name without suffix, e.g., "PoV"

        current_level_dict = nav_tree  # Start at the root of the nav structure

        # Traverse/create directory levels
        for part_name in parts:
            title_part = part_name.replace('_', ' ').replace('-', ' ').capitalize()

            # Get the next level in the nav structure
            next_level_node = current_level_dict.get(title_part)

            if isinstance(next_level_node, dict):
                # Already a dictionary (a section), so just move into it
                current_level_dict = next_level_node
            elif next_level_node is None:
                # This part of the path doesn't exist yet, create it as a new section (dictionary)
                current_level_dict[title_part] = {}
                current_level_dict = current_level_dict[title_part]
            else:
                # Conflict: This part_name was previously a file link (string), now needs to be a section.
                # Promote it to a section. The original file link might be overshadowed.
                logging.warning(
                    f"Navigation structure conflict: Promoting entry '{title_part}' "
                    f"(which was a file: '{next_level_node}') to a directory section "
                    f"to accommodate nested path: '{file_path_str}'. The original file link for '{title_part}' will be lost "
                    "from the nav unless it was intended as an index page for this new section."
                )
                current_level_dict[title_part] = {} # Overwrite with a new dictionary
                current_level_dict = current_level_dict[title_part]

        # Now, current_level_dict is the dictionary representing the file's immediate parent directory.
        # Add the file itself to this level.
        file_title = filename_stem.replace('_', ' ').replace('-', ' ').capitalize()

        if file_title in current_level_dict and isinstance(current_level_dict[file_title], dict):
            # Conflict: A directory/section already exists with the same name as this file.
            # This could happen if you have `Ledger/Transaction.md` and also `Ledger/Transaction/SubAction.md`.
            # "Transaction" would be a section. How to represent `Ledger/Transaction.md` itself?
            # MkDocs often uses `Ledger/Transaction/index.md` for the section's main page.
            logging.warning(
                f"Navigation conflict: Cannot add file '{file_title}' from path '{file_path_str}'. "
                f"A directory/section with the same title '{file_title}' already exists at this level. "
                "Consider naming the file 'index.md' if it's meant to be the overview page for this section, "
                "or place its content into the directory's index.md."
            )
            # Option: Store it under a special key, e.g., current_level_dict[file_title]["_self_"] = file_path_str
            # For now, we'll skip adding this conflicting file entry to avoid overwriting the section.
        else:
            current_level_dict[file_title] = file_path_str

    # Convert the dict tree to MkDocs nav list format (recursive helper)
    def format_nav_level_to_list(level_dict_items):
        nav_list_segment = []
        # Sort items by title for consistent order
        for title, content in sorted(level_dict_items, key=lambda item: item[0]):
            if isinstance(content, dict): # It's a subsection
                nav_list_segment.append({title: format_nav_level_to_list(list(content.items()))})
            else: # It's a file path (string)
                nav_list_segment.append({title: content})
        return nav_list_segment

    final_nav_list = []
    if home_item:
        final_nav_list.append(home_item)

    final_nav_list.extend(format_nav_level_to_list(list(nav_tree.items())))
    return final_nav_list



# --- Main Build Logic ---
def main(run_agda_html=False): # Add flag argument
    """Orchestrates the documentation build pipeline up to preparing source for Shake/Agda."""
    setup_logging() # Initialize logging

    # 1. Setup directories.
    logging.info("Setting up build directories...")
    shutil.rmtree(BUILD_DIR, ignore_errors=True)

    # create build subdirectories
    TEMP_DIR.mkdir(parents=True, exist_ok=True)
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)
    FINAL_LAGDA_MD_DIR.mkdir(parents=True, exist_ok=True)
    AGDA_SNAPSHOT_SRC_DIR.mkdir(parents=True, exist_ok=True) # Create snapshot dir
    if run_agda_html: # Only create Agda HTML output dir if needed
        AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    # Create interim mkdocs source structure
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)

    # 2. Generate macros.json
    if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
        logging.info(f"Generating {MACROS_JSON.name} from {MACROS_STY_PATH.name}...")
        run_command(["python", GENERATE_MACROS_PY, MACROS_STY_PATH, MACROS_JSON])
    elif not MACROS_JSON.exists():
        logging.error(f"{MACROS_JSON.name} not found and cannot be generated.")
        sys.exit(1)
    else:
        logging.info(f"Using existing {MACROS_JSON.name}")

    # 3. Create Agda Source Snapshot (copy ALL from src/)
    logging.info(f"Creating Agda source snapshot in {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}...")
    try:
        shutil.copytree(SRC_DIR, AGDA_SNAPSHOT_SRC_DIR, dirs_exist_ok=True)
        logging.info("Source copy complete.")
    except Exception as e:
        logging.error(f"Failed to copy source tree: {e}", exc_info=True)
        sys.exit(1)


    # 4. Generate snapshot .agda-lib file
    # These should match the libraries provided by `specs.deps` in our default.nix
    agda_lib_dependencies = [
        "standard-library",
        "standard-library-classes",
        "standard-library-meta",
        "abstract-set-theory"
    ]
    agda_lib_content = f"""\
name: snapshot-build
include: .
depend: {" ".join(agda_lib_dependencies)}
"""
    snapshot_lib_file = AGDA_SNAPSHOT_SRC_DIR / f"{AGDA_SNAPSHOT_SRC_DIR.name}.agda-lib" # e.g., agda_snapshot_src.agda-lib
    try:
        with open(snapshot_lib_file, "w", encoding="utf-8") as f:
            f.write(agda_lib_content)
        logging.info(f"Generated {snapshot_lib_file.name} in snapshot directory.")
    except Exception as e:
        logging.error(f"Failed to write {snapshot_lib_file.name}: {e}")
        sys.exit(1)

    mkdocs_nav_structure = {} # Collect nav info for interim MkDocs site

    # 5. Find and process all .lagda files from original source
    logging.info(f"Searching for .lagda files in {SRC_DIR}...")
    lagda_files = sorted(list(SRC_DIR.rglob("*.lagda")))
    logging.info(f"Found {len(lagda_files)} .lagda files.")

    if not lagda_files: logging.warning("No .lagda files found."); # Don't exit, just finish

    processed_lagda_md_files_in_snapshot = [] # Keep track of files for Agda step

    for lagda_file_abs_path in lagda_files:
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR)
        logging.info(f"\nProcessing: {relative_path}")

        # Define intermediate/output paths
        current_temp_lagda = TEMP_DIR / relative_path.with_suffix(".lagda.temp")
        current_code_blocks = CODE_BLOCKS_DIR / relative_path.with_suffix(".codeblocks.json")
        current_intermediate_md = INTERMEDIATE_MD_DIR / relative_path.with_suffix(".md.intermediate")
        current_final_lagda_md = FINAL_LAGDA_MD_DIR / relative_path.with_suffix(".lagda.md") # Output of postprocess

        # Paths within the snapshot directory
        snapshot_original_lagda = AGDA_SNAPSHOT_SRC_DIR / relative_path # Original .lagda path in snapshot
        snapshot_target_path = AGDA_SNAPSHOT_SRC_DIR / relative_path.with_suffix(".lagda.md") # Target for generated md in snapshot

        # Path for interim MkDocs site (uses .lagda.md if Agda step skipped)
        mkdocs_interim_md_target = MKDOCS_DOCS_DIR / relative_path.with_suffix(".md")

        # Ensure parent dirs exist (needed for first file in a subdir)
        current_temp_lagda.parent.mkdir(parents=True, exist_ok=True)
        current_code_blocks.parent.mkdir(parents=True, exist_ok=True)
        current_intermediate_md.parent.mkdir(parents=True, exist_ok=True)
        current_final_lagda_md.parent.mkdir(parents=True, exist_ok=True)
        snapshot_target_path.parent.mkdir(parents=True, exist_ok=True)
        mkdocs_interim_md_target.parent.mkdir(parents=True, exist_ok=True)

        # --- Execute Pipeline Steps (up to Postprocess) ---
        try:
            # A: Preprocess
            logging.info(f"  Running preprocess.py...")
            run_command([
                "python", PREPROCESS_PY,
                lagda_file_abs_path, MACROS_JSON, current_code_blocks
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
            logging.info(f"  Running postprocess.py...")
            run_command([
                "python", POSTPROCESS_PY,
                current_intermediate_md, current_code_blocks, current_final_lagda_md
            ])

            # D: Remove original .lagda from snapshot and Copy generated .lagda.md into snapshot
            if snapshot_original_lagda.is_file():
                 logging.info(f"  Removing original {snapshot_original_lagda.name} from snapshot...")
                 snapshot_original_lagda.unlink()
            elif snapshot_original_lagda.exists(): # Check if it exists but isn't a file (e.g., dir?)
                 logging.warning(f"  Path exists but is not a file, cannot remove: {snapshot_original_lagda}")

            logging.info(f"  Copying {current_final_lagda_md.name} to snapshot dir {snapshot_target_path.parent.relative_to(PROJECT_ROOT)}...")
            shutil.copy2(current_final_lagda_md, snapshot_target_path)
            processed_lagda_md_files_in_snapshot.append(snapshot_target_path) # Add to list for Agda step

            # Keep track of relative path for nav generation
            nav_path = str(relative_path.with_suffix(".md"))
            parts = list(relative_path.parent.parts) + [relative_path.stem]
            nav_title = " / ".join(p.replace('_', ' ').replace('-', ' ').capitalize() for p in parts if p != '.')
            if not nav_title: nav_title = relative_path.stem.capitalize()
            mkdocs_nav_structure[nav_path] = nav_title # Store path -> title


        except Exception as e:
            logging.error(f"Error processing file {relative_path}: {e}", exc_info=True)
            logging.warning("Skipping further processing for this file.")
            continue # Skip to next file


    # --- Optional Step: Agda --html (Run only if flag is set) ---
    final_md_files_for_mkdocs = [] # List of final .md files (relative path strings) to use in nav

    if run_agda_html:
        logging.info(f"\nRunning agda --html on processed files in snapshot...")
        AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

        # Run Agda on each processed .lagda.md file within the snapshot directory
        # Note: Agda might be smarter if run on just the top-level modules,
        # but processing each ensures all are attempted.
        for lagda_md_in_snapshot in processed_lagda_md_files_in_snapshot:
            relative_path_in_snapshot = lagda_md_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR)

            # 1. Determine the target path and name in the MkDocs docs directory (e.g., "Ledger/File.md")
            target_filename_in_mkdocs = relative_path_in_snapshot.name.replace(".lagda.md", ".md")
            target_path_relative_to_mkdocs_docs = relative_path_in_snapshot.parent / target_filename_in_mkdocs
            mkdocs_target_md_path = MKDOCS_DOCS_DIR / target_path_relative_to_mkdocs_docs
            # ^^^^^^^^^^^^^^^^^^^ = the full path to the final .md file in the mkdocs source

            # 2. Determine the Agda module name and the expected output filename from Agda
            # e.g., from "Ledger/File.lagda.md" -> module "Ledger.File"
            module_name_base_path_str = str(relative_path_in_snapshot.parent / relative_path_in_snapshot.name.replace(".lagda.md", ""))
            module_name = module_name_base_path_str.replace(os.sep, ".")
            # Remove leading dot if the file was top-level (e.g. "MyModule.lagda.md" -> ".MyModule" -> "MyModule")
            if module_name.startswith(".") and len(module_name) > 1:
                module_name = module_name[1:]

            agda_output_filename = module_name + ".md"
            agda_html_source_file = AGDA_HTML_OUTPUT_DIR / agda_output_filename
            # agda_html_source_file is like "_build/docs/agda_html_output/Ledger.File.md"

             # Agda output path relative to AGDA_HTML_OUTPUT_DIR
             # agda_html_processed_md = AGDA_HTML_OUTPUT_DIR / relative_path.with_suffix(".md")


            logging.info(f"  Preparing to run Agda for module {module_name} (source: {relative_path_in_snapshot})")
            try:
                # Run Agda with the snapshot directory as CWD, using the generated .agda-lib
                run_command([
                    "agda", "--html", "--html-highlight=code",
                    f"--html-dir={AGDA_HTML_OUTPUT_DIR.resolve()}", # Output dir
                    # Include path relative to CWD (snapshot root) is "."
                    "-i", ".",
                    str(lagda_md_in_snapshot.resolve()) # Input file
                ], cwd=AGDA_SNAPSHOT_SRC_DIR.resolve()) # CWD is snapshot root

                # Check for and copy Agda's output to final MkDocs docs folder
                mkdocs_target_md_path.parent.mkdir(parents=True, exist_ok=True)
                if agda_html_source_file.exists():
                    logging.info(f"  Copying Agda output {agda_html_source_file.name} to {mkdocs_target_md_path}")
                    shutil.copy2(agda_html_source_file, mkdocs_target_md_path)
                    final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))
                else:
                    logging.warning(f"Agda HTML output not found: {agda_html_source_file} (expected for module {module_name})")
                    logging.info(f"  Fallback: Copying pre-Agda file {lagda_md_in_snapshot.name} to {mkdocs_target_md_path} (renamed)")
                    # Copy the non-Agda-processed .lagda.md from the snapshot, but rename it to .md for MkDocs
                    shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md_path)
                    final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))

            except Exception as e:
                logging.error(f"Agda --html failed for {relative_path}: {e}", exc_info=True)
                logging.warning("Skipping Agda step for this file. Copying intermediate .lagda.md instead.")
                # Copy the non-Agda-processed .lagda.md as fallback
                mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md)
                final_md_files_for_mkdocs.append(str(relative_path.with_suffix(".md")))
    else:
        # If not running Agda step, copy the .lagda.md files directly
        logging.info("\nSkipping agda --html step.")
        logging.info("Copying final *.lagda.md files to MkDocs source...")
        for lagda_md_in_final_dir in FINAL_LAGDA_MD_DIR.rglob("*.lagda.md"):
            relative_path = lagda_md_in_final_dir.relative_to(FINAL_LAGDA_MD_DIR)  # e.g. Module/File.lagda.md

            target_filename_no_agda = relative_path.name.replace(".lagda.md", ".md")
            target_relative_path_for_mkdocs_no_agda = relative_path.parent / target_filename_no_agda
            mkdocs_target_md = MKDOCS_DOCS_DIR / target_relative_path_for_mkdocs_no_agda

            mkdocs_target_md.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(lagda_md_in_final_dir, mkdocs_target_md)
            final_md_files_for_mkdocs.append(str(target_relative_path_for_mkdocs_no_agda)) # Use the corrected relative path

    # --- Assemble Interim/Final MkDocs Site Source ---
    logging.info("\nAssembling MkDocs source directory...")
    # Copy static assets
    assets_to_copy = {}
    agda_css_target = MKDOCS_CSS_DIR / "Agda.css"
    if run_agda_html: # Only copy Agda.css if Agda step ran
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

    # Ensure index.md exists and is in nav structure
    mkdocs_index_path = MKDOCS_DOCS_DIR / "index.md"
    nav_has_index = 'index.md' in (str(p) for p in final_md_files_for_mkdocs)
    if not mkdocs_index_path.exists() and not nav_has_index:
        logging.warning(f"index.md missing, creating minimal version.")
        with open(mkdocs_index_path, "w", encoding="utf-8") as f: f.write("# Welcome\n")
        mkdocs_nav_structure['index.md'] = "Home" # Add to nav map
    elif mkdocs_index_path.exists() and not nav_has_index:
         mkdocs_nav_structure['index.md'] = "Home" # Add existing index to nav map


    # Generate mkdocs.yml
    logging.info("Generating final mkdocs.yml...")
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {}
    default_cfg = { # Base config
        "site_name": "Agda Ledger Formalization",
        "theme": {"name": "material"},
        "extra_css": ["css/custom.css"], # Start with custom
        "extra_javascript": ["js/custom.js"],
        "markdown_extensions": [
            "admonition", {"toc": {"permalink": True}},
            {"pymdownx.superfences": {}}, "attr_list" ]}
    if run_agda_html and agda_css_target.exists(): # Conditionally add Agda.css
        default_cfg["extra_css"].append("css/Agda.css")

    # Load template if available
    if MKDOCS_YML_TEMPLATE.exists() and HAS_YAML:
        try:
            with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f: mkdocs_config = yaml.full_load(f) or {}
            for key, value in default_cfg.items(): # Merge defaults for missing keys
                 if key == 'extra_css' or key == 'extra_javascript' or key == 'markdown_extensions':
                      # Append defaults if not present in template list
                      base_list = mkdocs_config.setdefault(key, [])
                      for item in value:
                           if item not in base_list:
                                base_list.append(item)
                 else:
                      mkdocs_config.setdefault(key, value)
            logging.info(f"Loaded and merged mkdocs.yml template from {MKDOCS_YML_TEMPLATE}")
        except Exception as e: logging.warning(f"Failed loading template {MKDOCS_YML_TEMPLATE}: {e}. Using defaults."); mkdocs_config = default_cfg
    else: mkdocs_config = default_cfg


    # Build nav structure from the collected paths and titles
    mkdocs_config['nav'] = build_nested_nav(final_md_files_for_mkdocs, MKDOCS_DOCS_DIR)

    # Write mkdocs.yml
    try:
        if HAS_YAML:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f: yaml.dump(mkdocs_config, f, sort_keys=False, default_flow_style=False, allow_unicode=True)
            logging.info(f"Generated mkdocs.yml using PyYAML at {mkdocs_yml_path}")
        else:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f: json.dump(mkdocs_config, f, indent=2)
            logging.warning(f"Generated mkdocs.yml as JSON (PyYAML not found) at {mkdocs_yml_path}")
    except Exception as e: logging.error(f"Error writing mkdocs.yml: {e}")


    logging.info(f"\nBuild script finished.")
    if not run_agda_html:
         logging.info(f"Primary output for Shake/Agda: {AGDA_SNAPSHOT_SRC_DIR}")
    logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR}")
    logging.info(f"Full log saved to: {LOG_FILE}")
    logging.info(f"To serve the site locally: mkdocs serve --config-file {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")


if __name__ == "__main__":
    # Add command line argument parsing
    parser = argparse.ArgumentParser(description="Build MkDocs site source from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run the 'agda --html' step after postprocessing."
    )
    args = parser.parse_args()

    # Setup logging as early as possible
    setup_logging()

    try:
        main(run_agda_html=args.run_agda)
    except Exception as e:
        logging.exception("Build failed with an error.") # Log exception traceback
        sys.exit(1)
    finally:
        logging.shutdown() # Ensure logs are flushed
