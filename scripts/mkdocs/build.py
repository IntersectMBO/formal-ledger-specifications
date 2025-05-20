# build.py
#
# PURPOSE:
# Converts a repository of Agda source files (plain .agda and LaTeX-based
# literate .lagda) into Markdown-based literate Agda files. It then builds the
# source structure for an MkDocs website to serve these files as hyperlinked
# project documentation.
#
# PROCESS OVERVIEW:
# 1.  Initial Setup:
#     - Cleans and creates necessary subdirectories within `_build/mkdocs/`.
#     - Generates `_build/mkdocs/macros.json` from `latex/macros.sty` for
#       LaTeX-to-Markdown conversion steps.
# 2.  Agda Source Snapshot Preparation (`_build/mkdocs/agda_snapshot_src/`):
#     a. Copies the entire `src/` directory (containing original Agda sources)
#        to the `agda_snapshot_src/` directory.
#     b. Converts any plain `.agda` files within this snapshot to `.lagda.md`
#        (Markdown-based literate Agda) format.
#     c. For each original LaTeX-based `.lagda` file from `src/`:
#        i.  Runs a multi-stage pipeline (custom Python preprocessing ->
#            Pandoc with Lua filter -> custom Python postprocessing) to
#            convert it into a Markdown-based `.lagda.md` file.
#        ii. This processed `.lagda.md` replaces its corresponding original
#            file in the `agda_snapshot_src/` directory.
#     d. Result: `agda_snapshot_src/` now contains all project modules as
#        `.lagda.md` files, maintaining the original `src/` directory structure.
#        This directory is the input for the Agda HTML generation step.
# 3.  Agda HTML Generation & Site Content Preparation (`_build/mkdocs/mkdocs_src/docs/`):
#     a. If the `--run-agda` flag is passed:
#        i.  `agda --html --html-highlight=auto` is run on the `CardanoLedger.lagda.md`
#            file within `agda_snapshot_src/`.
#        ii. Agda outputs processed files into `_build/mkdocs/mkdocs_src/docs/`.
#            Output filenames are flat, dot-separated module names ending in
#            `.md` (e.g., `Ledger.Transaction.md`).
#     b. If `--run-agda` is NOT passed (or if Agda processing fails for a file):
#        i.  The corresponding `.lagda.md` file from `agda_snapshot_src/` is
#            copied to `_build/mkdocs/mkdocs_src/docs/`.
#        ii. It's renamed to the flat `ModuleName.md` format (e.g.,
#            `Ledger.Transaction.md`).
# 4.  MkDocs Site Assembly (`_build/mkdocs/mkdocs_src/`):
#     a. Static assets (CSS, JS, images, `index.md` template if needed) are
#        copied to `_build/mkdocs/mkdocs_src/docs/`.
#     b. `mkdocs.yml` is generated in `_build/mkdocs/mkdocs_src/`. The site
#        navigation (`nav` section) is built by parsing the flat `ModuleName.md`
#        filenames into a hierarchical structure.
# 5.  Cleanup:
#     a. Intermediate artifact directories and files created within `_build/mkdocs/`
#        during the build (e.g., `lagda_temp/`, `agda_html_output/`, `macros.json`)
#        are removed.
#
# USAGE:
# From the main project directory (e.g., `formal-ledger-specifications/`):
#   python ./scripts/mkdocs/build.py [--run-agda]
#   (or, using Python's module execution: python -m scripts.mkdocs.build [--run-agda])
#
# KEY OUTPUTS (within `_build/mkdocs/`):
# - agda_snapshot_src/: Contains all project Agda sources as processed `.lagda.md`
#                       files, structured as in the original `src/` directory. This
#                       serves as the primary input for the `agda --html` step.
# - mkdocs_src/:        Contains the complete source for the MkDocs site:
#                       - `docs/`: Final `.md` documentation pages (using flat,
#                         dot-separated names like `Ledger.Transaction.md`), CSS, JS.
#                         (output of `agda --html` command goes here)
#                       - `mkdocs.yml`: The MkDocs configuration file with site
#                         structure and navigation.
#                       This directory is ready for `mkdocs build` or `mkdocs serve`.
# - build.log:          Detailed log file of the build script's execution.
#
# INTERMEDIATE ARTIFACTS (created and then cleaned up by this script):
# - macros.json        (output of generate_macros_json.py)
# - lagda_temp/        (output of preprocess.py; input to pandoc+lua)
# - code_blocks_json/  (output of preprocess.py; input to postprocess.py)
# - md_intermediate/   (output of pandoc+lua; input to postprocess.py)

import os
import sys
import subprocess
import json
import re
import shutil
from pathlib import Path
from typing import List, Dict, Optional, Any, TypedDict
import logging
import argparse
try:
    import yaml
    HAS_YAML = True
except ImportError:
    HAS_YAML = False
try:
    from agda2lagda import convert_agda_to_lagda_md
except ImportError:
    print(f"FATAL: Could not import 'convert_agda_to_lagda_md'. Ensure 'agda2lagda.py' is in {SCRIPTS_DIR}.", file=sys.stderr)
    sys.exit(1)

# --- Custom Type Definitions ---
class ProcessedFileInfo(TypedDict):
    original_path: Path
    temp_path: Path
    code_blocks_json_path: Path
    intermediate_md_path: Path
    snapshot_target_path: Path
    final_flat_md_filename: str
    relative_path_original: Path

class LabelTargetInfo(TypedDict):
    file: str
    anchor: str
    caption_text: str

# Helper class for managing paths within .lagda processing loop.
class LagdaProcessingPaths:
    """
    Manage set of file paths for processing a single .lagda file.
    All paths constructed based on `relative_path` from source directory.
    """
    def __init__(self, relative_path: Path):
        self.relative = relative_path # e.g., Path("Module/File.lagda")

        # intermediate file paths based on global directories
        self.temp_lagda = TEMP_DIR / self.relative.with_suffix(".lagda.temp")
        self.code_blocks_json = CODE_BLOCKS_DIR / self.relative.with_suffix(".codeblocks.json")
        self.intermediate_md = INTERMEDIATE_MD_DIR / self.relative.with_suffix(".md.intermediate")

        # snapshot related paths
        self.snapshot_original_lagda = AGDA_SNAPSHOT_SRC_DIR / self.relative # Original .lagda in snapshot
        # target for processed .lagda.md in the snapshot
        self.snapshot_target_lagda_md = AGDA_SNAPSHOT_SRC_DIR / self.relative.with_suffix(".lagda.md")

        # path for .md file in mkdocs docs directory (before Agda html processing)
        # typically .lagda.md -> .md
        self.mkdocs_interim_md = MKDOCS_DOCS_DIR / self.relative.with_suffix(".md")

    def ensure_parent_dirs_exist(self) -> None:
        """Create all needed parent directories for output files of this specific relative_path."""
        # Collect all unique parent directories that need to exist for this file's outputs
        # Note: base directories (TEMP_DIR, etc.) are created by setup_directories(); this is for
        #       subdirectories *within* those base output directories.
        parents_to_create = {
            self.temp_lagda.parent,
            self.code_blocks_json.parent,
            self.intermediate_md.parent,
            self.snapshot_target_lagda_md.parent, # parent of target in snapshot
            self.mkdocs_interim_md.parent,
        }
        for parent_dir in parents_to_create:
            parent_dir.mkdir(parents=True, exist_ok=True)

# --- Configuration ---
PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent   # Assumes build.py is in PROJECT_ROOT/scripts/mkdocs
SRC_DIR = PROJECT_ROOT / "src"                                 # Agda source (input)
LIB_EXTS_DIR = PROJECT_ROOT / "lib-exts"                       # Agda source (input)
STATIC_MKDOCS_DIR = PROJECT_ROOT / "mkdocs"                    # static mkdocs assets
SCRIPTS_DIR = PROJECT_ROOT / "scripts" / "mkdocs"              # location of this script and helpers
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty"            # path to LaTeX macros
DOCS_TEMPLATE_DIR = STATIC_MKDOCS_DIR / "templates"            # source for index.md, mkdocs_template.yml
BUILD_DIR = PROJECT_ROOT / "_build"                            # top-level build dir
BUILD_MKDOCS_DIR = BUILD_DIR / "mkdocs"                        # root for mkdocs build intermediate products
MACROS_JSON = BUILD_MKDOCS_DIR / "macros.json"                 # macro JSONs: output of generate_macros_json.py
                                                               #              input to preprocess.py
TEMP_DIR = BUILD_MKDOCS_DIR / "lagda_temp"                     # intermediate latex: output of preprocess.py
                                                               #                     input to pandoc+lua
CODE_BLOCKS_DIR = BUILD_MKDOCS_DIR / "code_blocks_json"        # code block JSONs: output of preprocess.py
                                                               #                   input to postprocess.py
INTERMEDIATE_MD_DIR = BUILD_MKDOCS_DIR / "md_intermediate"     # intermediate `.lagda.md`: output of pandoc+lua
                                                               #                           intput to postprocess.py
AGDA_SNAPSHOT_SRC_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_src" # markdown-based literate Agda source code
                                                               #   output of postprocess.py
                                                               #   input to `agda --html`
                                                               #   input to shake (if `agda --html` relegated to shake)
AGDA_SNAPSHOT_LIB_EXTS_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_lib_exts" # copy of Agda library extensions

# Directories for mkdocs site generation
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
def setup_logging() -> None:
    """Configures logging to file (DEBUG) and console (INFO) without basicConfig."""
    log_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')

    # get root logger
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG) # set lowest level for logger itself

    # clear existing handlers (important if this function could be called multiple times)
    if logger.hasHandlers():
        logger.handlers.clear()

    # file handler (DEBUG level)
    try:
        # ensure directory for LOG_FILE exists just before opening
        LOG_FILE.parent.mkdir(parents=True, exist_ok=True) # for extra safety
        file_handler = logging.FileHandler(LOG_FILE, mode='w', encoding='utf-8')
        file_handler.setFormatter(log_formatter)
        file_handler.setLevel(logging.DEBUG)
        logger.addHandler(file_handler)
    except Exception as e:
        # If this fails, we need to know why. Print to stderr.
        print(f"CRITICAL LOGGING ERROR: Failed to set up file logging to {LOG_FILE}: {e}", file=sys.stderr)
        # Optionally, re-raise or exit if file logging is critical
        # For now, let it continue so console logging might still work.

    # Console handler (INFO level)
    console_handler = logging.StreamHandler(sys.stderr)
    console_handler.setFormatter(log_formatter)
    console_handler.setLevel(logging.INFO)  # set this to DEBUG for troubleshooting
    logger.addHandler(console_handler)

    # This message might not make it to file if file_handler failed,
    # but will go to console if console_handler working.
    logging.info("Logging setup complete. Log file: %s", LOG_FILE)

def setup_directories() -> None:
    """
    Cleans the main MkDocs build artifacts directory and recreates essential
    subdirectories for the current build run.
    """
    # Only remove and recreate the specific mkdocs build directory.
    # Avoid deleting unrelated artifacts in _build/ (e.g., from shake/CI)!
    if BUILD_MKDOCS_DIR.exists(): # BUILD_MKDOCS_DIR is _build/mkdocs/
        logging.info(f"Cleaning up existing MkDocs build directory: {BUILD_MKDOCS_DIR}")
        shutil.rmtree(BUILD_MKDOCS_DIR)
    else:
        logging.info(f"MkDocs build directory does not exist, will create: {BUILD_MKDOCS_DIR}")

    logging.info(f"Creating fresh MkDocs build directories under: {BUILD_MKDOCS_DIR}")

    # Create directories for intermediate build products and final staging.
    # (subdirectories of BUILD_MKDOCS_DIR)
    TEMP_DIR.mkdir(parents=True, exist_ok=True)              # for .lagda.temp files
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)       # for code_blocks.json
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)   # for .md.intermediate files
    AGDA_SNAPSHOT_SRC_DIR.mkdir(parents=True, exist_ok=True) # for Agda source snapshot
    AGDA_SNAPSHOT_LIB_EXTS_DIR.mkdir(parents=True, exist_ok=True) # for Agda source snapshot

    # Create final mkdocs site source structure (where content is copied to).
    MKDOCS_SRC_DIR.mkdir(parents=True, exist_ok=True)        # root for mkdocs.yml and docs/
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)       # for final .md pages and assets
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)        # for CSS assets
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)         # for JS assets


def cleanup_intermediate_mkdocs_artifacts() -> None:
    """
    Remove intermediate artifact directories and files generated within
    _build/mkdocs/ during the build process, keeping only the final outputs
    (like agda_snapshot_src/ and mkdocs_src/ and, for now, agda_html_output/).
    """
    logging.info("Cleaning up intermediate MkDocs build artifacts from _build/mkdocs/...")

    # directories to remove (subdirectories of BUILD_MKDOCS_DIR)
    intermediate_dirs = [
        TEMP_DIR,
        CODE_BLOCKS_DIR,
        INTERMEDIATE_MD_DIR,
    ]

    # files to remove (direct children of BUILD_MKDOCS_DIR)
    intermediate_files = [
        MACROS_JSON # generated from .sty (considered intermediate for this script's run)
    ]

    for artifact_dir in intermediate_dirs:
        if artifact_dir.exists():
            try:
                shutil.rmtree(artifact_dir)
                logging.info(f"  Successfully removed intermediate directory: {artifact_dir.relative_to(BUILD_MKDOCS_DIR)}")
            except OSError as e: # catch more specific error for rmtree
                logging.warning(f"  Warning: Could not remove intermediate directory {artifact_dir}: {e}")
        else:
            logging.debug(f"  Intermediate directory not found (already clean or not created): {artifact_dir.relative_to(BUILD_MKDOCS_DIR)}")

    for artifact_file in intermediate_files:
        if artifact_file.exists():
            try:
                artifact_file.unlink()
                logging.info(f"  Successfully removed intermediate file: {artifact_file.relative_to(BUILD_MKDOCS_DIR)}")
            except OSError as e: # catch more specific error for unlink
                logging.warning(f"  Warning: Could not remove intermediate file {artifact_file}: {e}")
        else:
            logging.debug(f"  Intermediate file not found (already clean or not created): {artifact_file.relative_to(BUILD_MKDOCS_DIR)}")

    logging.info("Intermediate artifact cleanup complete.")

# --- Helper for changing header phrases to link labels (slugs) ---
def slugify(text_to_slug: Optional[str]) -> str:
    """
    Generates a slug from text, similar to Python-Markdown's default.
    """
    if not text_to_slug: # handle empty string case
        return "section" # default slug for empty text
    text_to_slug = str(text_to_slug) # ensure text is string
    slug = text_to_slug.lower()

    # Remove unwanted characters
    slug = re.sub(r'[^\w\s-]', '', slug) # remove anything not a letter, number, underscore, or hyphen
    slug = re.sub(r'[-\s]+', '-', slug)  # replace whitespace and hyphen sequences with single hyphen
    slug = slug.strip('-')               # remove leading/trailing hyphens
    if not slug:         # if all chars stripped
        return "section" # default slug if original text yields empty slug
    return slug


def build_nav_from_flat_files(flat_file_paths_str_list) -> List[Dict[str, Any]]:
    """
    Builds a mkdocs navigation structure from a list of flat file path strings
    (e.g., ["Ledger.Transaction.md", "Ledger.Prelude.md", "index.md"]).
    Filenames are expected to be relative to mkdocs docs directory.
    """
    nav_tree = {}

    # Normalize and sort paths: "index.md" first, then lexicographically.
    # Ensures "Home" is first and the rest of the nav is stable.
    home_filename = "index.md"

    # Ensure all paths are just filenames for parsing
    processed_filenames = []
    for p_str in flat_file_paths_str_list:
        p_obj = Path(p_str)
        # If p_str was already like "docs/file.md", take name. If just "file.md", also take name.
        processed_filenames.append(p_obj.name)

    unique_filenames = sorted(
        list(set(processed_filenames)),
        key=lambda f: (f.lower() != home_filename.lower(), f) # home first, then case-insensitive sort
    )

    actual_home_file_for_nav = None

    for filename_str in unique_filenames: # e.g., "Ledger.Transaction.md"
        if filename_str.lower() == home_filename.lower():
            actual_home_file_for_nav = filename_str # store actual case used for "index.md"
            continue

        file_stem_flat = Path(filename_str).stem # "Ledger.Transaction" (removes ".md")

        # Split into parts: ["Ledger", "Transaction"]
        name_parts = file_stem_flat.split('.')

        # The last part is the page title, preceding parts form the section path.
        page_title_str = name_parts[-1] # .replace('_', ' ').replace('-', ' ').capitalize()
                                        # ^^^^^^^^ don't do this! (use raw module names)
        section_path_parts = name_parts[:-1] # e.g., ["Ledger"] or ["External", "Lib"]

        current_level_dict = nav_tree

        for section_name_raw in section_path_parts:
            section_title_str = section_name_raw #.replace('_', ' ').replace('-', ' ').capitalize()
                                                 # ^^^^^^^^ don't do this! (use raw module names)
            if section_title_str not in current_level_dict:
                current_level_dict[section_title_str] = {}
            elif not isinstance(current_level_dict[section_title_str], dict):
                # Conflict: A file was previously assigned here. Promote to section.
                # This case should be rare if naming conventions are consistent.
                logging.warning(
                    f"Navigation: Promoting '{section_title_str}' (which was a file link: "
                    f"'{current_level_dict[section_title_str]}') to a section to accommodate "
                    f"nested file '{filename_str}'."
                )
                # Create a placeholder for the original file, e.g., as an "Overview" page
                original_file_link = current_level_dict[section_title_str]
                current_level_dict[section_title_str] = {"Overview": original_file_link}

            current_level_dict = current_level_dict[section_title_str]

        # Add the current file (page) to its correct place in the navigation tree
        if page_title_str in current_level_dict:
            logging.warning(
                f"Navigation: Title '{page_title_str}' for file '{filename_str}' conflicts "
                f"with an existing item at the same level: '{current_level_dict[page_title_str]}'. "
                f"File '{filename_str}' will overwrite the previous entry if it was also a file, "
                f"or be skipped if it was a section."
            )
            # Only overwrite if the existing entry isn't a section (dict) itself
            if not isinstance(current_level_dict[page_title_str], dict):
                 current_level_dict[page_title_str] = filename_str
            else:
                # Attempt to add with a modified name if it's a section conflict
                current_level_dict[f"{page_title_str}/"] = current_level_dict[page_title_str]
                current_level_dict[page_title_str] = filename_str
        else:
            current_level_dict[page_title_str] = filename_str

    # Convert the dictionary tree to mkdocs nav list format (recursive helper)
    def format_nav_subtree(subtree_dict):
        nav_list_segment = []
        # Sort items by key (title) for consistent navigation order
        for title, content_or_path in sorted(subtree_dict.items(), key=lambda item: item[0]):
            if isinstance(content_or_path, dict): # it's a subsection dictionary
                nav_list_segment.append({title: format_nav_subtree(content_or_path)})
            else: # it's a file path string
                nav_list_segment.append({title: content_or_path})
        return nav_list_segment

    final_nav_structure = []
    if actual_home_file_for_nav:
        final_nav_structure.append({"Home": actual_home_file_for_nav})

    final_nav_structure.extend(format_nav_subtree(nav_tree))

    return final_nav_structure

# Helper function to determine flat name and copy/rename from snapshot
def copy_snapshot_file_with_flat_name(
    lagda_md_file_in_snapshot: Path,
    snapshot_root_dir: Path,
    target_docs_dir: Path
) -> str | None:
    """
    Calculates the flat MD filename for a snapshot file, copies the snapshot
    file to the target docs directory with that flat name.
    Returns the flat filename string (e.g., "Module.File.md") if successful, else None.
    """
    try:
        relative_path_from_snapshot_root = lagda_md_file_in_snapshot.relative_to(snapshot_root_dir)

        module_name_parts = list(relative_path_from_snapshot_root.parent.parts)
        file_stem = relative_path_from_snapshot_root.name
        if file_stem.endswith(".lagda.md"): file_stem = file_stem[:-len(".lagda.md")]
        elif file_stem.endswith(".lagda"): file_stem = file_stem[:-len(".lagda")]
        elif file_stem.endswith(".md"): file_stem = file_stem[:-len(".md")]

        is_index_file = file_stem.lower() == "index"
        if not module_name_parts and is_index_file: module_name_flat = "index"
        elif not module_name_parts: module_name_flat = file_stem
        else:
            if not is_index_file: module_name_parts.append(file_stem)
            module_name_flat = ".".join(part for part in module_name_parts if part)

        final_flat_filename = module_name_flat + ".md"
        mkdocs_target_full_path = target_docs_dir / final_flat_filename

        mkdocs_target_full_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(lagda_md_file_in_snapshot, mkdocs_target_full_path)
        logging.debug(f"  Copied snapshot file {lagda_md_file_in_snapshot.name} to {mkdocs_target_full_path.name} (flat name)")
        return final_flat_filename
    except Exception as e:
        logging.error(f"  Failed to copy/rename snapshot file {lagda_md_file_in_snapshot.name} to flat name: {e}", exc_info=True)
        return None


# --- Helper to run commands ---
def run_command(command_args: List[str],
                cwd: Optional[Path] = None,
                capture_output: bool = False,
                text: bool = False,
                check: bool = False,
                stdout_file: Optional[Path] = None) -> subprocess.CompletedProcess:
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



# --- Main Pipeline Logic ---
def main(run_agda_html=False):
    """Orchestrates the documentation build pipeline."""
    logging.info("Starting MkDocs build process...")

    # 1. Setup directories and logging.
    logging.info("Setting up build directories and logging...")
    setup_directories()
    setup_logging()

    # 2. Generate macros.json
    if GENERATE_MACROS_PY.exists() and MACROS_STY_PATH.exists():
        logging.info(f"Generating {MACROS_JSON.name} from {MACROS_STY_PATH.name}...")
        run_command(["python", str(GENERATE_MACROS_PY), str(MACROS_STY_PATH), str(MACROS_JSON)])
    elif not MACROS_JSON.exists():
        logging.error(f"{MACROS_JSON.name} not found and cannot be generated. Exiting.")
        sys.exit(1)
    else:
        logging.info(f"Using existing {MACROS_JSON.name}")

    # 3. Create Agda Source Snapshot
    logging.info(f"Creating Agda source snapshot in {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}...")
    try:
        shutil.copytree(SRC_DIR, AGDA_SNAPSHOT_SRC_DIR, dirs_exist_ok=True)
    except Exception as e:
        logging.error(f"Failed to copy source tree from {SRC_DIR} to {AGDA_SNAPSHOT_SRC_DIR}: {e}", exc_info=True)
        sys.exit(1)

    logging.info(f"Creating Agda source snapshot in {AGDA_SNAPSHOT_LIB_EXTS_DIR.relative_to(PROJECT_ROOT)}...")
    try:
        shutil.copytree(LIB_EXTS_DIR, AGDA_SNAPSHOT_LIB_EXTS_DIR, dirs_exist_ok=True)
    except Exception as e:
        logging.error(f"Failed to copy source tree from {LIB_EXTS_DIR} to {AGDA_SNAPSHOT_LIB_EXTS_DIR}: {e}", exc_info=True)
        sys.exit(1)

    # 4a. Convert .agda to .lagda.md in the snapshot
    logging.info("Converting .agda files to .lagda.md in the src snapshot directory...")
    # Ensure agda2lagda module is correctly imported for this to work
    if 'convert_agda_to_lagda_md' not in globals():
        logging.error("agda2lagda.convert_agda_to_lagda_md not available. Skipping .agda conversion.")
    else:
        conversion_success = convert_agda_to_lagda_md(
            str(AGDA_SNAPSHOT_SRC_DIR),
            project_root_for_logging=PROJECT_ROOT # Assuming agda2lagda uses this
        )
        if not conversion_success:
            logging.error("Failed during .agda to .lagda.md conversion. Exiting.")
            sys.exit(1)

    # 4b. Generate snapshot .agda-lib file
    agda_lib_depend = [
        "standard-library", "standard-library-classes", "standard-library-meta", "abstract-set-theory", "iog-prelude"
    ]
    agda_lib_include = [".", f"{AGDA_SNAPSHOT_LIB_EXTS_DIR}"]
    agda_lib_content = f"name: snapshot-build\ndepend: {' '.join(agda_lib_depend)}\ninclude: {' '.join(agda_lib_include)}"
    snapshot_lib_file = AGDA_SNAPSHOT_SRC_DIR / f"{AGDA_SNAPSHOT_SRC_DIR.name}.agda-lib"
    try:
        with open(snapshot_lib_file, "w", encoding="utf-8") as f:
            f.write(agda_lib_content)
        logging.info(f"Generated {snapshot_lib_file.name} in snapshot directory.")
    except Exception as e:
        logging.error(f"Failed to write {snapshot_lib_file.name}: {e}")
        sys.exit(1)

    # 6. Process original .lagda files (LaTeX-based) through pipeline
    logging.info(f"Searching for original .lagda (LaTeX-based) files in {SRC_DIR.relative_to(PROJECT_ROOT)}...")
    original_latex_lagda_files = sorted(list(SRC_DIR.rglob("*.lagda"))) # the LaTeX-based literate Agda files
    logging.info(f"Found {len(original_latex_lagda_files)} original .lagda (LaTeX-based) files to process.")

    # --- STAGE 1: Run preprocess.py on all original LaTeX .lagda files ---
    # We'll collect info needed for later stages.
    processed_latex_files_info = [] # List to store tuples: (original_abs_path, temp_file_path, final_flat_md_name)

    if original_latex_lagda_files:
        logging.info("\n--- Running preprocess.py for all original LaTeX .lagda files ---")
        for lagda_file_abs_path in original_latex_lagda_files:
            relative_path = lagda_file_abs_path.relative_to(SRC_DIR) # e.g., Module/File.lagda
            logging.info(f"Preprocessing: {relative_path}")

            paths = LagdaProcessingPaths(relative_path) # Manages intermediate file paths
            paths.ensure_parent_dirs_exist()

            try:
                run_command([
                    "python", str(PREPROCESS_PY),
                    str(lagda_file_abs_path),
                    str(MACROS_JSON),
                    str(paths.code_blocks_json) # Output for code blocks
                ], stdout_file=str(paths.temp_lagda)) # Output .lagda.temp

                # Determine the final flat MD filename for this file
                module_name_parts = list(relative_path.parent.parts)
                file_stem = relative_path.name
                # Remove .lagda to get the base for module name parts
                if file_stem.endswith(".lagda"): file_stem = file_stem[:-len(".lagda")]

                is_index_file_stem = file_stem.lower() == "index"
                if not module_name_parts and is_index_file_stem: module_name_flat = "index"
                elif not module_name_parts: module_name_flat = file_stem
                else:
                    if not is_index_file_stem: module_name_parts.append(file_stem)
                    module_name_flat = ".".join(part for part in module_name_parts if part)

                final_flat_md_filename = module_name_flat + ".md"

                processed_latex_files_info.append({
                    "original_path": lagda_file_abs_path,
                    "temp_path": paths.temp_lagda,
                    "code_blocks_json_path": paths.code_blocks_json,
                    "intermediate_md_path": paths.intermediate_md, # For Pandoc output
                    "snapshot_target_path": AGDA_SNAPSHOT_SRC_DIR / relative_path.with_suffix(".lagda.md"), # Final .lagda.md in snapshot
                    "final_flat_md_filename": final_flat_md_filename,
                    "relative_path_original": relative_path # For LagdaProcessingPaths if needed again
                })

            except Exception as e:
                logging.error(f"Error during preprocess.py for {relative_path}: {e}", exc_info=True)
                # Decide if you want to halt or continue with other files
    else:
        logging.info("No original LaTeX .lagda files found to preprocess.")

    # --- STAGE 2: Build Global Label Map from .lagda.temp files ---
    global_labels_to_targets_map = {}
    if processed_latex_files_info:
        logging.info("\n--- Building global label map from processed .lagda.temp files ---")
        for file_info in processed_latex_files_info:
            temp_file_path = file_info["temp_path"]
            final_flat_filename_for_map = file_info["final_flat_md_filename"]

            if temp_file_path.exists():
                with open(temp_file_path, 'r', encoding='utf-8') as f_temp:
                    temp_content = f_temp.read()

                # Find all @@FIGURE_BLOCK_TO_SUBSECTION@@label=L@@caption=C@@ placeholders
                for match in re.finditer(r"@@FIGURE_BLOCK_TO_SUBSECTION@@label=(.*?)@@caption=(.*?)@@", temp_content, flags=re.DOTALL):
                    original_label_id_escaped = match.group(1)
                    caption_text_escaped = match.group(2)

                    # Unescape "@@" if it was escaped in preprocess.py
                    original_label_id = original_label_id_escaped.replace("@ @", "@@")
                    caption_text = caption_text_escaped.replace("@ @", "@@")

                    target_anchor_slug = slugify(caption_text) # Use the defined slugify function

                    if original_label_id in global_labels_to_targets_map:
                        # Log a warning if a label is redefined
                        existing_entry = global_labels_to_targets_map[original_label_id]
                        if existing_entry["file"] != final_flat_filename_for_map or existing_entry["anchor"] != f"#{target_anchor_slug}":
                            logging.warning(
                                f"Label '{original_label_id}' (caption: '{caption_text}') in '{final_flat_filename_for_map}' "
                                f"redefines existing entry from '{existing_entry['file']}' pointing to '{existing_entry['anchor']}'."
                            )

                    global_labels_to_targets_map[original_label_id] = {
                        "file": final_flat_filename_for_map,
                        "anchor": f"#{target_anchor_slug}", # Anchor includes '#'
                        "caption_text": caption_text      # Store original caption for link text
                    }
                    logging.debug(f"Mapped LaTeX label '{original_label_id}' to target: file='{final_flat_filename_for_map}', anchor='{target_anchor_slug}'")
            else:
                logging.warning(f"Expected .lagda.temp file not found for label mapping: {temp_file_path}")

        # Save the map to labels_map.json
        labels_map_json_path = BUILD_MKDOCS_DIR / "labels_map.json"
        try:
            with open(labels_map_json_path, 'w', encoding='utf-8') as f_map:
                json.dump(global_labels_to_targets_map, f_map, indent=2)
            logging.info(f"Global label-to-target map saved to {labels_map_json_path}")
        except Exception as e:
            logging.error(f"Failed to save labels_map.json: {e}", exc_info=True)
            # This is critical; postprocessing might fail or produce wrong links.
            # Consider exiting or using an empty map for postprocessing.
            labels_map_json_path = None # Indicate failure to save/use
    else:
        logging.info("No processed files to build label map from. Skipping map generation.")
        labels_map_json_path = None # No map file generated

    # --- STAGE 3: Run Pandoc and postprocess.py for original LaTeX .lagda files ---
    # This list will contain path objects to all .lagda.md files in AGDA_SNAPSHOT_SRC_DIR
    # that are ready for the optional `agda --html` step; it includes those converted from
    # .agda, added earlier, and those from this LaTeX pipeline.
    candidate_literate_md_files_in_snapshot = []
    for lagda_md_file in AGDA_SNAPSHOT_SRC_DIR.rglob("*.lagda.md"):
        if lagda_md_file not in candidate_literate_md_files_in_snapshot:
             candidate_literate_md_files_in_snapshot.append(lagda_md_file)


    if processed_latex_files_info: # This list drives the processing of original LaTeX files
        logging.info("\n--- Running Pandoc & postprocess.py for original LaTeX .lagda files ---")
        for file_info in processed_latex_files_info:
            relative_path = file_info["relative_path_original"]
            logging.info(f"Pandoc/Postprocessing: {relative_path}")

            temp_lagda_path = file_info["temp_path"]
            intermediate_md_path = file_info["intermediate_md_path"]
            current_file_code_blocks_json = file_info["code_blocks_json_path"]

            # .lagda.md file that will go into snapshot:
            snapshot_target_lagda_md_path = file_info["snapshot_target_path"]

            try:
                # B: Pandoc + Lua (.lagda.temp -> .md.intermediate)
                run_command([
                    "pandoc", str(temp_lagda_path),
                    "-f", "latex", "-t", "gfm+attributes", # Or your preferred Markdown flavor
                    "--lua-filter", str(LUA_FILTER),
                    "-o", str(intermediate_md_path)
                ])

                # C: Postprocess (.md.intermediate -> final .lagda.md for snapshot)
                #    pass path to labels_map.json
                postprocess_args = [
                    "python", str(POSTPROCESS_PY),
                    str(intermediate_md_path),           # sys.argv[1] in postprocess.py
                    str(current_file_code_blocks_json),  # sys.argv[2] in postprocess.py
                ]

                # Add labels_map.json path
                if labels_map_json_path and labels_map_json_path.exists():
                    postprocess_args.append(str(labels_map_json_path))  # sys.argv[3] in postprocess.py
                else:
                    # Create/use dummy empty JSON file if map doesn't exist.
                    dummy_map_path = BUILD_MKDOCS_DIR / "dummy_labels_map.json"
                    if not dummy_map_path.exists(): # Create only if needed
                        with open(dummy_map_path, 'w', encoding='utf-8') as f_dummy:
                            json.dump({}, f_dummy)
                    postprocess_args.append(str(dummy_map_path))
                    logging.warning(f"labels_map.json not found or failed to save at expected path '{labels_map_json_path}'. Using dummy empty map for postprocessing {relative_path}.")

                # Add output file path
                postprocess_args.append(str(snapshot_target_lagda_md_path))  # sys.argv[4] in postprocess.py

                logging.debug(f"  Running postprocess with args: {postprocess_args}")
                run_command(postprocess_args) # generates snapshot_target_lagda_md_path

                # Check if the .lagda.md was successfully created by postprocess.py
                if snapshot_target_lagda_md_path.exists():
                    # Add the newly created .lagda.md to the list for Agda processing
                    if snapshot_target_lagda_md_path not in candidate_literate_md_files_in_snapshot:
                        candidate_literate_md_files_in_snapshot.append(snapshot_target_lagda_md_path)
                    logging.info(f"  Successfully generated {snapshot_target_lagda_md_path.relative_to(AGDA_SNAPSHOT_SRC_DIR)} from {relative_path}")

                    # Now, remove the original .lagda file (e.g., Ledger/Address.lagda)
                    # from the snapshot directory to prevent ambiguity.
                    # 'relative_path' is like 'Ledger/Address.lagda'
                    snapshot_original_latex_lagda = AGDA_SNAPSHOT_SRC_DIR / relative_path

                    if snapshot_original_latex_lagda.exists() and snapshot_original_latex_lagda.is_file():
                        try:
                            snapshot_original_latex_lagda.unlink()
                            logging.info(f"  Successfully removed original .lagda file from snapshot: {snapshot_original_latex_lagda.relative_to(AGDA_SNAPSHOT_SRC_DIR)}")
                        except OSError as e:
                            logging.error(f"  Failed to remove original .lagda file {snapshot_original_latex_lagda.relative_to(AGDA_SNAPSHOT_SRC_DIR)} from snapshot: {e}")
                    elif snapshot_original_latex_lagda.exists():
                        # e.g., a directory; should ideally not happen if SRC_DIR structured correctly.
                        logging.warning(f"  Original .lagda path {snapshot_original_latex_lagda.relative_to(AGDA_SNAPSHOT_SRC_DIR)} exists in snapshot but is not a file. Not removing.")
                    else:
                        # might happen if original file wasn't .lagda or was already removed by another process (unlikely).
                        logging.debug(f"  Original .lagda file {snapshot_original_latex_lagda.relative_to(AGDA_SNAPSHOT_SRC_DIR)} not found in snapshot for removal.")

                else: # snapshot_target_lagda_md_path does not exist
                    logging.error(f"  Postprocessed file {snapshot_target_lagda_md_path.name} (target: {snapshot_target_lagda_md_path.relative_to(AGDA_SNAPSHOT_SRC_DIR)}) not found for {relative_path}! Original .lagda file will not be removed.")

            except Exception as e:
                logging.error(f"Error during Pandoc/Postprocess for {relative_path}: {e}", exc_info=True)
                continue # Skip to next file

    # Ensure the list of candidates is unique and sorted for deterministic builds
    unique_literate_md_files_in_snapshot = sorted(list(set(candidate_literate_md_files_in_snapshot)))
    logging.info(f"\nTotal unique literate .md files in snapshot for Agda processing: {len(unique_literate_md_files_in_snapshot)}")

    for f in unique_literate_md_files_in_snapshot:
        logging.debug(f"  Candidate for Agda: {f.relative_to(AGDA_SNAPSHOT_SRC_DIR)}")

    # --- Optional Step: Agda --html (now using flat naming) ---
    final_md_files_for_mkdocs_nav = [] # List of flat filenames (e.g., "Module.File.md") for MkDocs nav

    if run_agda_html:
        logging.info(f"\nRunning Agda --html, outputting directly to MkDocs docs directory using 'CardanoLedger.lagda.md'...")

        # Ensure MKDOCS_DOCS_DIR is clean or ready.
        # setup_directories should have handled cleaning BUILD_MKDOCS_DIR,
        # so MKDOCS_DOCS_DIR will be fresh.
        # MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True) # Already done by setup_directories

        master_agda_file_snapshot_rel_path_str = "CardanoLedger.lagda.md" # master file
        master_agda_file_abs_path_in_snapshot = AGDA_SNAPSHOT_SRC_DIR / master_agda_file_snapshot_rel_path_str

        if not master_agda_file_abs_path_in_snapshot.exists():
            logging.error(f"Master Agda file '{master_agda_file_snapshot_rel_path_str}' not found in snapshot: {AGDA_SNAPSHOT_SRC_DIR}")
            logging.warning("Skipping Agda --html step. Falling back to copying snapshot files.")
            # fallback logic (using copy_snapshot_file_with_flat_name)
            for lagda_md_file_in_snapshot in unique_literate_md_files_in_snapshot:
                copied_flat_name = copy_snapshot_file_with_flat_name(
                    lagda_md_file_in_snapshot, AGDA_SNAPSHOT_SRC_DIR, MKDOCS_DOCS_DIR
                )
                if copied_flat_name and copied_flat_name not in final_md_files_for_mkdocs_nav:
                    final_md_files_for_mkdocs_nav.append(copied_flat_name)
        else:
            logging.info(f"Found master Agda file for HTML generation: {master_agda_file_snapshot_rel_path_str}")
            try:
                # Run Agda --html, outputting directly into MKDOCS_DOCS_DIR
                logging.info(f"Running Agda --html on '{master_agda_file_snapshot_rel_path_str}', outputting to {MKDOCS_DOCS_DIR.resolve()}")
                run_command([
                    "agda", "--html", "--html-highlight=auto",
                    f"--html-dir={MKDOCS_DOCS_DIR.resolve()}", # output md/html directly to final docs dir
                    "-i", ".", # include path relative to CWD
                    master_agda_file_snapshot_rel_path_str
                ], cwd=AGDA_SNAPSHOT_SRC_DIR.resolve())
                logging.info(f"Agda --html command completed. Files generated in {MKDOCS_DOCS_DIR}.")

                # DEPRECATED: Process .md files IN PLACE within MKDOCS_DOCS_DIR for link rewriting.
                #             Identify which files Agda generated or touched by globbing MKDOCS_DOCS_DIR for *.md.
                #             logging.info(f"Rewriting internal links in Agda-generated files within {MKDOCS_DOCS_DIR}...")
                # BECAUSE: Agda-generated files will link to .html.
                #          With use_directory_urls: false, MkDocs serves .md files as .html files.
                #          So, no link extension rewriting is needed for Agda's output.
                #          We just need to collect the filenames for navigation.

                # Collect files for navigation; these are the flat names Agda created.
                logging.info(f"Collecting Agda-generated files from {MKDOCS_DOCS_DIR} for navigation...")
                # Only add files that actually exist after Agda runs.
                processed_by_agda_count = 0
                for generated_file_path in MKDOCS_DOCS_DIR.glob("*.md"):

                    # Consider only .md and .html files for navigation if Agda produces others
                    if generated_file_path.suffix not in ['.md', '.html']:
                        continue

                    flat_filename = generated_file_path.name # e.g., "Ledger.Transaction.md"
                    logging.debug(f"  Found Agda-generated file for nav: {flat_filename}")

                    if flat_filename not in final_md_files_for_mkdocs_nav:
                        final_md_files_for_mkdocs_nav.append(flat_filename)
                    processed_by_agda_count +=1

                logging.info(f"File collection finished. Found {processed_by_agda_count} Agda-related .md/.html files in {MKDOCS_DOCS_DIR}.")
                if processed_by_agda_count == 0 and unique_literate_md_files_in_snapshot:
                    logging.warning(f"Agda ran but no '.md' or '.html' files were found or collected in {MKDOCS_DOCS_DIR}. This might indicate an issue with Agda's output.")

            except Exception as e_agda:
                logging.error(f"The main Agda --html command failed: {e_agda}", exc_info=True)
                logging.warning("Agda --html failed. Falling back to copying snapshot files (these will not have Agda HTML highlighting).")
                final_md_files_for_mkdocs_nav.clear()
                for lagda_md_file_in_snapshot in unique_literate_md_files_in_snapshot:
                    # fallback copies processed .lagda.md files, which will be served as .html by mkdocs.
                    # Links within them (e.g., from \Cref) should ideally point to OtherModule.html.
                    copied_flat_name = copy_snapshot_file_with_flat_name(
                        lagda_md_file_in_snapshot, AGDA_SNAPSHOT_SRC_DIR, MKDOCS_DOCS_DIR
                    )
                    if copied_flat_name and copied_flat_name not in final_md_files_for_mkdocs_nav:
                        final_md_files_for_mkdocs_nav.append(copied_flat_name)
    else:
        # Fallback if not running Agda; ensure it uses copy_snapshot_file_with_flat_name.
        logging.info("\nSkipping agda --html step. Copying .lagda.md files from snapshot with flat names...")
        if not unique_literate_md_files_in_snapshot:
            logging.warning("No processed literate files in snapshot to copy to MkDocs.")
        for lagda_md_file_in_snapshot in unique_literate_md_files_in_snapshot:
            copied_flat_name = copy_snapshot_file_with_flat_name(
                lagda_md_file_in_snapshot, AGDA_SNAPSHOT_SRC_DIR, MKDOCS_DOCS_DIR
            )
            if copied_flat_name and copied_flat_name not in final_md_files_for_mkdocs_nav:
                final_md_files_for_mkdocs_nav.append(copied_flat_name)

    # --- Assemble interim/final mkdocs site source ---
    logging.info("\nAssembling mkdocs source directory...")
    # Copy static assets (Agda.css, custom.css, custom.js, index.md template)
    # Ensure Agda.css is copied if run_agda_html was true.
    assets_to_copy = {}
    if run_agda_html:
        try:
            agda_css_proc = run_command(["agda", "--print-agda-data-dir"], capture_output=True, check=False, text=True)
            if agda_css_proc.returncode == 0 and agda_css_proc.stdout:
                agda_data_dir = agda_css_proc.stdout.strip()
                agda_css_source = Path(agda_data_dir) / "html" / "Agda.css"
                if agda_css_source.exists():
                    assets_to_copy[agda_css_source] = MKDOCS_CSS_DIR / "Agda.css"
                else:
                    logging.warning(f"Agda.css not found at expected location: {agda_css_source}")
            else:
                logging.warning(f"Could not run 'agda --print-agda-data-dir' to find Agda.css. Stderr: {agda_css_proc.stderr}")
        except Exception as e:
            logging.warning(f"Error trying to find Agda.css: {e}")

    if CUSTOM_CSS_SOURCE.exists(): assets_to_copy[CUSTOM_CSS_SOURCE] = MKDOCS_CSS_DIR / CUSTOM_CSS_SOURCE.name
    if CUSTOM_JS_SOURCE.exists(): assets_to_copy[CUSTOM_JS_SOURCE] = MKDOCS_JS_DIR / CUSTOM_JS_SOURCE.name

    # Handle index.md template:
    # If "index.md" was generated from Agda files (e.g. from "index.lagda.md"), it will be in final_md_files_for_mkdocs_nav.
    # If not and template exists, copy it; otherwise, create a minimal one.
    home_page_filename = "index.md" # target flat name for homepage
    if not any(f.lower() == home_page_filename.lower() for f in final_md_files_for_mkdocs_nav):
        mkdocs_index_final_path = MKDOCS_DOCS_DIR / home_page_filename
        if INDEX_MD_TEMPLATE.exists():
            assets_to_copy[INDEX_MD_TEMPLATE] = mkdocs_index_final_path
            logging.info(f"Using index.md template: {INDEX_MD_TEMPLATE}")
        elif not mkdocs_index_final_path.exists(): # only create if no index.md
            logging.warning(f"No 'index.md' generated or found as template. Creating minimal index.md.")
            mkdocs_index_final_path.parent.mkdir(parents=True, exist_ok=True)
            with open(mkdocs_index_final_path, "w", encoding="utf-8") as f: f.write("# Welcome\n")

        # add to nav list if we just created/copied it and it wasn't from Agda processing
        if home_page_filename not in final_md_files_for_mkdocs_nav:
             final_md_files_for_mkdocs_nav.append(home_page_filename)

    for src_path, dest_path in assets_to_copy.items():
        try:
            logging.info(f"  Copying asset {src_path.name} to {dest_path.relative_to(PROJECT_ROOT)}")
            dest_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src_path, dest_path)
        except Exception as e:
            logging.error(f"Failed to copy asset {src_path} to {dest_path}: {e}")

    # ensure unique list for nav, with index.md first.
    final_md_files_for_mkdocs_nav = sorted(
        list(set(final_md_files_for_mkdocs_nav)),
        key=lambda f: (f.lower() != home_page_filename.lower(), f.lower())
    )

    # Generate mkdocs.yml
    logging.info("Generating final mkdocs.yml...")
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {} # start with empty and merge from template/defaults
    default_theme_name = "material"
    default_cfg = {
        "site_name": "Cardano Ledger Formal Specification",
        "use_directory_urls": False, # no longer using directory urls ∵ incompatible with Agda-generated html
        "theme": {"name": default_theme_name, "features": ["navigation.expand"]},
        "extra_css": [],
        "extra_javascript": [],
        "markdown_extensions": [
            "admonition", "pymdownx.details", "pymdownx.superfences",
            "attr_list", "md_in_html",
            {"toc": {"permalink": True, "slugify": "markdown.extensions.toc.slugify_unicode"}},
            {"pymdownx.highlight": {"anchor_linenums": True, "use_pygments": True}},
            "pymdownx.inlinehilite", "pymdownx.snippets", "pymdownx.tabbed",
            # using simpler emoji support for now
            # {"pymdownx.emoji": {"emoji_index": "pymdownx.emoji.gemoji", "emoji_generator": "pymdownx.emoji.to_svg"}},
            "pymdownx.emoji",
        ]
    }

    # Update CSS/JS paths in default_cfg based on actual copied assets
    if (MKDOCS_CSS_DIR / "Agda.css").exists(): default_cfg["extra_css"].append("css/Agda.css")
    if CUSTOM_CSS_SOURCE.exists() and (MKDOCS_CSS_DIR / CUSTOM_CSS_SOURCE.name).exists():
        default_cfg["extra_css"].append(f"css/{CUSTOM_CSS_SOURCE.name}")
    if CUSTOM_JS_SOURCE.exists() and (MKDOCS_JS_DIR / CUSTOM_JS_SOURCE.name).exists():
        default_cfg["extra_javascript"].append(f"js/{CUSTOM_JS_SOURCE.name}")

    # Load and merge mkdocs.yml template if available
    if MKDOCS_YML_TEMPLATE.exists() and HAS_YAML:
        try:
            with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f_yml_template:
                mkdocs_config = yaml.safe_load(f_yml_template) or {}
            logging.info(f"Loaded mkdocs.yml template from {MKDOCS_YML_TEMPLATE.relative_to(PROJECT_ROOT)}")
            # Smart merge: Default values are applied if not present in template.
            # Lists are concatenated (template items first, then unique default items).
            mkdocs_config.setdefault("site_name", default_cfg["site_name"])

            # Theme handling
            theme_cfg_template = mkdocs_config.get("theme", {})
            if isinstance(theme_cfg_template, str): # template just had theme: name
                theme_cfg_template = {"name": theme_cfg_template}
            mkdocs_config["theme"] = {**default_cfg["theme"], **theme_cfg_template} # template overrides defaults

            for list_key in ["extra_css", "extra_javascript", "markdown_extensions"]:
                template_list = mkdocs_config.get(list_key, [])
                default_list = default_cfg.get(list_key, [])
                # Combine: template items + unique items from default_list
                combined_list = list(template_list) # Start with template items
                for item_d in default_list:
                    is_present = False
                    # Basic check for presence (doesn't handle dicts perfectly but ok for common case)
                    for item_t in template_list:
                        # while the following works for common MkDocs extension formats, it could
                        # be fragile; let's keep an eye on it if issues with extension merging arise;
                        # a more robust approach might explicitly map extension names.
                        if isinstance(item_d, dict) and isinstance(item_t, dict) and list(item_d.keys())[0] == list(item_t.keys())[0]:
                            is_present = True; break
                        elif item_d == item_t:
                            is_present = True; break
                    if not is_present:
                        combined_list.append(item_d)
                mkdocs_config[list_key] = combined_list

            # Apply other defaults not handled above
            for k, v_default in default_cfg.items():
                if k not in ["theme", "extra_css", "extra_javascript", "markdown_extensions"]:
                    mkdocs_config.setdefault(k, v_default)

        except Exception as e:
            logging.warning(f"Failed loading/merging template {MKDOCS_YML_TEMPLATE}: {e}. Using base defaults.", exc_info=True)
            mkdocs_config = default_cfg.copy() # Use a copy to avoid modifying original default_cfg
    else:
        if not HAS_YAML and MKDOCS_YML_TEMPLATE.exists():
            logging.warning(f"MkDocs YML template found ({MKDOCS_YML_TEMPLATE}) but PyYAML not installed. Using defaults.")
        mkdocs_config = default_cfg.copy()

    # Generate navigation structure using the new function
    mkdocs_config['nav'] = build_nav_from_flat_files(final_md_files_for_mkdocs_nav)

    # Write final mkdocs.yml
    try:
        if HAS_YAML:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f_yml:
                yaml.dump(mkdocs_config, f_yml, sort_keys=False, default_flow_style=False, allow_unicode=True, width=1000)
            logging.info(f"Generated mkdocs.yml at {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")
        else:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f_yml_json:
                json.dump(mkdocs_config, f_yml_json, indent=2)
            logging.warning(f"Generated mkdocs.yml as JSON (PyYAML not installed) at {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")
    except Exception as e:
        logging.error(f"Error writing mkdocs.yml: {e}", exc_info=True)

    logging.info(f"\nBuild script finished successfully!")
    if not run_agda_html:
         logging.info(f"Primary input for Shake/Agda (if used): {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Full log saved to: {LOG_FILE.relative_to(PROJECT_ROOT)}")
    logging.info(f"To serve the site locally (from project root): mkdocs serve --config-file \"{mkdocs_yml_path}\"")
    # Or if CWD is PROJECT_ROOT: mkdocs serve -f "{mkdocs_yml_path.relative_to(PROJECT_ROOT)}"

    # Call cleanup for intermediate artifacts now that the build has succeeded
    cleanup_intermediate_mkdocs_artifacts()  # << comment out if artifacts needed for debugging

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build mkdocs site source from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run the 'agda --html --html-highlight=code' step on processed .lagda.md files."
    )
    args = parser.parse_args()

    try:
        main(run_agda_html=args.run_agda)
    except SystemExit as e: # catch sys.exit() specifically if used for early exits
        logging.error(f"Build process exited prematurely with code {e.code}.")
        # We may want to cleanup here; for now, cleanup is only on successful main completion.
    except Exception as e:
        logging.exception("CRITICAL ERROR: Build failed due to an unhandled exception.")
        # no cleanup here; preserve intermediate files for debugging error.
        sys.exit(1) # ensure non-zero exit code for CI
    finally:
        # executes whether main() succeeds or fails (unless sys.exit called)
        logging.info("Build script execution finished. Shutting down logging.")
        logging.shutdown()
