# build.py
#
# PURPOSE:
# This script orchestrates the conversion of Agda source files (plain .agda
# and LaTeX-based literate .lagda) into Markdown-based literate Agda files
# and integration of these with manually maintained Markdown documents.
# The script also assembles the complete source structure for an MkDocs
# website, ready for site generation and serving.
#
# KEY FEATURES
# (Guidance for users and contributors on manual overrides and custom configurations)
#
# 1.  **Persistent, Manually-Refined Literate Agda Files (`.lagda.md`):**
#     - **Location:** Place these files in (subdirectories of) `PROJECT_ROOT/src/`.
#       Move the corresponding `.lagda` file to `PROJECT_ROOT/src_legacy/`; e.g.,
#       old latex Agda file: `src/Module/File.lagda` -> `src_legacy/Module/File.lagda`
#       new markdown Agda file: `src/Module/File.lagda.md`
#     - **Behavior:** These files should be committed to our repository. During the
#       build, they will be copied into the `_build/mkdocs/agda_snapshot_src/`
#       directory. If a file in `src/` already has an `.lagad.md` extension, this
#       script will not generate a new version of it.
#     - **Use Case:** applying extensive manual edits, corrections, or custom
#       Markdown content to literate Agda files that should persist across builds.
#
# 2.  **Static Site Content (Standard Markdown `.md` files, `mkdocs.yml` base):**
#     - **Location:** Place your base `mkdocs.yml` and static Markdown files (plus
#       any other static assets like images) in (subdirectories of)
#       `PROJECT_ROOT/mkdocs/src/`. For example, static pages
#       go into `PROJECT_ROOT/mkdocs/src/docs/`.
#     - **Behavior:** These files and directories should be committed to your
#       repository. At the start of the build, the *entire content* of
#       `PROJECT_ROOT/mkdocs/src/` is copied to serve as the
#       initial structure for `_build/mkdocs/src/`. Generated files
#       (e.g., from Agda) will be added to this structure. If a generated
#       file has the same path and name as a file from this static template,
#       the generated version will overwrite the static one, and a warning
#       will be logged.
#     - **Use Case:** For "About" pages, installation guides, a foundational
#       `mkdocs.yml`, images, or any documentation not derived from Agda code.
#
# 3.  **Custom MkDocs Navigation (`nav.yml`):**
#     - **Location:** Create a YAML file named `nav.yml` at
#       `PROJECT_ROOT/mkdocs/nav.yml`.
#     - **Behavior:** This file should be committed to your repository. If it exists
#       and is valid YAML, its content will be used for the `nav:` section of
#       the `_build/mkdocs/src/mkdocs.yml` file. This overrides any
#       navigation structure that would otherwise be automatically generated
#       by the build script based on file names.
#     - **Use Case:** Provides complete, explicit control over the site's
#       navigation hierarchy and page titles in the navigation.
#
# PROCESS OVERVIEW:
# 1.  Initial Site Structure Setup:
#     a. Cleans and recreates necessary subdirectories within `_build/mkdocs/`.
#     b. The entire contents of `PROJECT_ROOT/mkdocs/src/`
#        (which should include a base `mkdocs.yml` and any static `docs/` content)
#        is copied to `_build/mkdocs/src/` to form the initial site structure.
#     c. Generates `_build/mkdocs/macros.json` from `latex/macros.sty` for use
#        in LaTeX-to-Markdown conversion steps.
#
# 2.  Agda Source Snapshot Preparation (`_build/mkdocs/agda_snapshot_src/`):
#     a. Copies the entire `src/` directory (containing original Agda sources)
#        to the `agda_snapshot_src/` directory.
#     b. Converts any plain `.agda` files within this snapshot to `.lagda.md` format
#        and updates them in place.
#     c. For each original LaTeX-based `.lagda` file from `src/`:
#        execute the multi-stage pipeline
#        (Python preprocessing -> Pandoc+Lua -> Python postprocessing)
#        to convert it into a Markdown-based `.lagda.md` file.
#        This processed file replaces its corresponding original in
#        `agda_snapshot_src/`.
#     d. Result: `agda_snapshot_src/` now contains all project modules as
#        `.lagda.md` files (derived from `.agda` or `.lagda` and the
#        LaTeX pipeline or files that were already `.lagda.md` files to begin with,
#        which will remain unaltered), maintaining the original `src/` directory
#        structure. This directory is the primary input for any Agda HTML generation.
#
# 3.  Site Content Generation & Population (`_build/mkdocs/src/docs/`):
#     (This step adds Agda-derived content to the `docs/` directory, which may
#     already contain static files from Step 1.b.)
#     a. If the `--run-agda` flag is passed:
#        i.  `agda --html` is run on the main `.lagda.md` file within
#            `agda_snapshot_src/`.
#        ii. Agda outputs its `.md` (and potentially other) files directly into
#            `_build/mkdocs/src/docs/`. Output filenames are typically
#            flat, dot-separated module names (e.g., `Ledger.Transaction.md`).
#            *A warning is logged if Agda overwrites a file from the static template.*
#     b. If `--run-agda` is NOT passed (or if Agda processing fails):
#        i.  Each `.lagda.md` file from `agda_snapshot_src/` is copied to
#            `_build/mkdocs/src/docs/`.
#        ii. Files are renamed to the flat `ModuleName.md` format during this copy.
#            *A warning is logged if this copy overwrites a file from the static template.*
#
# 4.  MkDocs Site Finalization (`_build/mkdocs/src/`):
#     a. Other static assets needed by the site (e.g., `Agda.css` if Agda HTML
#        was run, custom project CSS/JS) are copied into the appropriate
#        subdirectories of `_build/mkdocs/src/docs/`.
#        *A warning is logged if these assets overwrite files from the static template.*
#     b. The `mkdocs.yml` file (initially copied from
#        `PROJECT_ROOT/mkdocs/src/mkdocs.yml`) is updated:
#        i.  Dynamically required `extra_css` and `extra_javascript` (like
#            `Agda.css`) are added if not already present.
#        ii. If `PROJECT_ROOT/mkdocs/nav.yml` exists and is valid,
#            its content is used for the `nav:` section of `mkdocs.yml`.
#        iii.Otherwise, the `nav:` section is automatically generated by parsing
#            the `.md` filenames in `_build/mkdocs/src/docs/` into a
#            hierarchical structure.
#
# 5.  Cleanup:
#     a. Intermediate artifact directories and files created within `_build/mkdocs/`
#        (e.g., `lagda_temp/`, `macros.json`) are removed.
#
# USAGE:
# From the main project directory (e.g., `formal-ledger-specifications/`):
#   python ./scripts/mkdocs/build.py [--run-agda]
#   (or, using Python's module execution: python -m scripts.mkdocs.build [--run-agda])
#
# KEY OUTPUTS (within `_build/mkdocs/`):
# -  agda_snapshot_src/: all project Agda sources as processed `.lagda.md`
#    files, structured as in the original `src/` directory. This serves as the
#    primary input for the `agda --html` step.
# -  src/: complete source for MkDocs site.
#    -  `docs/`: final `.md` documentation pages (using flat,
#       dot-separated names like `Ledger.Transaction.md`), CSS, JS.
#       (output of `agda --html` command goes here)
#    -  `mkdocs.yml`: MkDocs configuration file with site structure and navigation.
#    (This directory is ready for `mkdocs build` or `mkdocs serve`.)
# - build.log: detailed log file of the build script's execution.
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


# --- Configuration ---
PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent      # assume build.py is in PROJECT_ROOT/scripts/mkdocs
SRC_DIR = PROJECT_ROOT / "src"                                    # original .lagda source
LIB_EXTS_DIR = PROJECT_ROOT / "src-lib-exts"                          # original .agda lib source
SCRIPTS_DIR = PROJECT_ROOT / "scripts" / "mkdocs"                 # this script and helpers
MACROS_STY_PATH = PROJECT_ROOT / "latex/macros.sty"               # LaTeX macros
BUILD_DIR = PROJECT_ROOT / "_build"                               # top-level build dir
BUILD_MKDOCS_DIR = BUILD_DIR / "mkdocs"                           # root for mkdocs build intermediate products
MACROS_JSON = BUILD_MKDOCS_DIR / "macros.json"                    # macro JSONs:  output of generate_macros_json.py
                                                                  #               input to preprocess.py
TEMP_DIR = BUILD_MKDOCS_DIR / "lagda_temp"                        # intermediate latex:  output of preprocess.py
                                                                  #                      input to pandoc+lua
CODE_BLOCKS_DIR = BUILD_MKDOCS_DIR / "code_blocks_json"           # code block JSONs:  output of preprocess.py
                                                                  #                    input to postprocess.py
INTERMEDIATE_MD_DIR = BUILD_MKDOCS_DIR / "md_intermediate"        # intermediate `.lagda.md`:  output of pandoc+lua
                                                                  #                            intput to postprocess.py
AGDA_SNAPSHOT_SRC_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_src"    # markdown-based literate Agda source code:
                                                                  #   output of postprocess.py
                                                                  #   input to `agda --html`
                                                                  #   input to shake (if `agda --html` relegated to shake)
# AGDA_SNAPSHOT_SRC_DIR now contains whatever was in src/:
# - some modules as pre-existing .lagda.md files
# - some modules as .agda files
# - some modules as .lagda (LaTeX) files
# Crucially, for any given module, only ONE of these types will exist.

AGDA_SNAPSHOT_LIB_EXTS_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_lib_exts" # copy of Agda library extensions

# Directories for mkdocs site generation
MKDOCS_SRC_DIR = BUILD_MKDOCS_DIR / "src"
MKDOCS_DOCS_DIR = MKDOCS_SRC_DIR / "docs"
MKDOCS_CSS_DIR = MKDOCS_DOCS_DIR / "css"
MKDOCS_JS_DIR = MKDOCS_DOCS_DIR / "js"

# Script paths
GENERATE_MACROS_PY = SCRIPTS_DIR / "generate_macros_json.py"
PREPROCESS_PY = SCRIPTS_DIR / "preprocess.py"
POSTPROCESS_PY = SCRIPTS_DIR / "postprocess.py"
LUA_FILTER = SCRIPTS_DIR / "agda-filter.lua"

# Static asset source paths
STATIC_MKDOCS_DIR = PROJECT_ROOT / "mkdocs"                       # static mkdocs assets
NAV_YML_TEMPLATE_PATH = STATIC_MKDOCS_DIR / "nav.yml"             # path to mkdocs navigation template
STATIC_MKDOCS_SRC_DIR = STATIC_MKDOCS_DIR / "src"                 # static content to inhabit mkdocs_src
STATIC_MKDOCS_DOCS_DIR = STATIC_MKDOCS_SRC_DIR / "docs"
STATIC_MKDOCS_CSS_DIR = STATIC_MKDOCS_DOCS_DIR / "css"
STATIC_MKDOCS_JS_DIR = STATIC_MKDOCS_DOCS_DIR / "js"
CUSTOM_CSS_SOURCE = STATIC_MKDOCS_CSS_DIR / "custom.css"
CUSTOM_JS_SOURCE = STATIC_MKDOCS_JS_DIR / "js" / "custom.js"
INDEX_MD_TEMPLATE = STATIC_MKDOCS_SRC_DIR / "docs" / "index.md"

# --- Logging Setup ---
LOG_FILE = BUILD_MKDOCS_DIR / "build.log"


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

# Logging Setup
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
    target_docs_dir: Path   # <<< MKDOCS_DOCS_DIR
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

        # check for overwrite
        if mkdocs_target_full_path.exists():
            logging.warning(f"  Overwrite: Generated file '{mkdocs_target_full_path.name}' "
                            f"is overwriting an existing file (likely from static template) "
                            f"at '{mkdocs_target_full_path.relative_to(PROJECT_ROOT)}'.")

        mkdocs_target_full_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(lagda_md_file_in_snapshot, mkdocs_target_full_path)
        logging.debug(f"  Copied snapshot file {lagda_md_file_in_snapshot.name} to {mkdocs_target_full_path.name} (flat name)")
        return final_flat_filename
    except Exception as e:
        logging.error(f"  Failed to copy/rename snapshot file {lagda_md_file_in_snapshot.name} to flat name: {e}", exc_info=True)
        return None


def macros_path(
    macros_json_target_path: Path,
    generator_script: Path,
    macros_sty_source: Path
) -> Path:
    """Ensures macros.json exists, generating it if necessary."""
    logging.info(f"Checking for {macros_json_target_path.name}...")
    if generator_script.exists() and macros_sty_source.exists():
        if not macros_json_target_path.exists() or macros_sty_source.stat().st_mtime > macros_json_target_path.stat().st_mtime:
            logging.info(f"Generating {macros_json_target_path.name} from {macros_sty_source.name}...")
            run_command(["python", str(generator_script), str(macros_sty_source), str(macros_json_target_path)])
        else:
            logging.info(f"Using existing and up-to-date {macros_json_target_path.name}.")
    elif not macros_json_target_path.exists():
        logging.error(f"{macros_json_target_path.name} not found and cannot be generated. Exiting.")
        sys.exit(1)
    else:
        logging.info(f"Using existing {macros_json_target_path.name} (generator or source .sty not found).")
    return macros_json_target_path


def create_agda_snapshots(
    original_src_dir: Path,
    snapshot_src_target_dir: Path,
    original_lib_exts_dir: Path,
    snapshot_lib_exts_target_dir: Path
) -> None:
    """Copies Agda source and src-lib-exts to their snapshot directories."""
    logging.info(f"Creating Agda source snapshot in {snapshot_src_target_dir.relative_to(PROJECT_ROOT)}...")
    shutil.copytree(original_src_dir, snapshot_src_target_dir, dirs_exist_ok=True)

    logging.info(f"Creating Agda src-lib-exts snapshot in {snapshot_lib_exts_target_dir.relative_to(PROJECT_ROOT)}...")
    shutil.copytree(original_lib_exts_dir, snapshot_lib_exts_target_dir, dirs_exist_ok=True)


def convert_agda_to_lagda(snapshot_src_dir: Path, project_root_for_logging: Path) -> None:
    """Converts .agda files to .lagda.md within the snapshot directory."""
    logging.info("Converting .agda files to .lagda.md in the src snapshot directory...")
    if 'convert_agda_to_lagda_md' not in globals():
        logging.error("agda2lagda.convert_agda_to_lagda_md not available. Skipping .agda conversion.")
        return # Or raise an error if critical
    try:
        conversion_success = convert_agda_to_lagda_md(
            str(snapshot_src_dir),
            project_root_for_logging=project_root_for_logging
        )
        if not conversion_success:
            logging.error("Failure during .agda to .lagda.md conversion. Exiting.")
            sys.exit(1) # Or raise an exception
    except Exception as e:
        logging.error(f"Error during .agda to .lagda.md conversion: {e}", exc_info=True)
        sys.exit(1) # Or raise


def generate_agda_lib_file(
    snapshot_src_dir: Path,
    snapshot_lib_exts_dir: Path,
    agda_lib_dependencies: List[str]
) -> Path:
    """Generate .agda-lib file in snapshot directory."""
    agda_lib_includes = [".", str(snapshot_lib_exts_dir.resolve())] # Use resolved absolute path for robustness
    agda_lib_content = f"name: {snapshot_src_dir.name}-build\n" \
                       f"depend: {' '.join(agda_lib_dependencies)}\n" \
                       f"include: {' '.join(agda_lib_includes)}"
    snapshot_lib_file = snapshot_src_dir / f"{snapshot_src_dir.name}.agda-lib"
    try:
        with open(snapshot_lib_file, "w", encoding="utf-8") as f:
            f.write(agda_lib_content)
        logging.info(f"Generated {snapshot_lib_file.name} in snapshot directory: {snapshot_lib_file}")
    except Exception as e:
        logging.error(f"Failed to write {snapshot_lib_file.name}: {e}", exc_info=True)
        sys.exit(1) # Or raise
    return snapshot_lib_file

def run_latex_preprocessing_stage(
    original_latex_lagda_files: List[Path],
    src_dir_root: Path,       # to calculate relative_path
    macros_json_path: Path,
    temp_dir: Path,           # base for temp_lagda
    code_blocks_dir: Path     # base for code_blocks_json
) -> List[ProcessedFileInfo]:
    """Runs preprocess.py on original LaTeX .lagda files."""
    processed_files_info: List[ProcessedFileInfo] = []
    if not original_latex_lagda_files:
        logging.info("No original LaTeX .lagda files found to preprocess.")
        return processed_files_info

    logging.info("\n--- Running preprocess.py for all original LaTeX .lagda files ---")
    for lagda_file_abs_path in original_latex_lagda_files:
        relative_path = lagda_file_abs_path.relative_to(src_dir_root)
        logging.info(f"Preprocessing: {relative_path}")

        paths = LagdaProcessingPaths(relative_path) # Uses global TEMP_DIR, CODE_BLOCKS_DIR etc.
                                                    # Pass temp_dir, code_blocks_dir if these should not be global
        paths.ensure_parent_dirs_exist()

        try:
            run_command([
                "python", str(PREPROCESS_PY), # PREPROCESS_PY would be a global constant
                str(lagda_file_abs_path),
                str(macros_json_path),
                str(paths.code_blocks_json)
            ], stdout_file=str(paths.temp_lagda))

            # Determine the final flat MD filename
            module_name_parts = list(relative_path.parent.parts)
            file_stem = relative_path.stem # .stem removes the final suffix, e.g. .lagda
            # (adjust if .lagda.tex or similar complex extensions exist)

            is_index_file_stem = file_stem.lower() == "index"
            if not module_name_parts and is_index_file_stem: flat_module_name_base = "index"
            elif not module_name_parts: flat_module_name_base = file_stem
            else:
                name_parts_for_join = list(module_name_parts)
                if not is_index_file_stem: name_parts_for_join.append(file_stem)
                flat_module_name_base = ".".join(part for part in name_parts_for_join if part)
            final_flat_md_filename = flat_module_name_base + ".md"

            processed_files_info.append({
                "original_path": lagda_file_abs_path,
                "temp_path": paths.temp_lagda,
                "code_blocks_json_path": paths.code_blocks_json,
                "intermediate_md_path": paths.intermediate_md,
                "snapshot_target_path": paths.snapshot_target_lagda_md,
                "final_flat_md_filename": final_flat_md_filename,
                "relative_path_original": relative_path
            })
        except Exception as e:
            logging.error(f"Error during preprocess.py for {relative_path}: {e}", exc_info=True)
            # Consider whether to continue or re-raise/sys.exit
    return processed_files_info


def build_global_label_map(
    processed_files_info: List[ProcessedFileInfo], # Uses 'temp_path' and 'final_flat_md_filename'
    build_mkdocs_dir: Path # To store labels_map.json
) -> Optional[Path]:
    """Builds and saves the global label-to-target map from .lagda.temp files."""
    global_labels_to_targets: Dict[str, LabelTargetInfo] = {}
    if not processed_files_info:
        logging.info("No processed files to build label map from. Skipping map generation.")
        return None
    logging.info("\n--- Building global label map from processed .lagda.temp files ---")
    for file_info in processed_files_info:
        temp_file_path = file_info["temp_path"]
        final_flat_filename_for_map = file_info["final_flat_md_filename"]
        if temp_file_path.exists():
            with open(temp_file_path, 'r', encoding='utf-8') as f_temp:
                temp_content = f_temp.read()
            # Find all @@FIGURE_BLOCK_TO_SUBSECTION@@label=L@@caption=C@@ placeholders
            for match in re.finditer(r"@@FIGURE_BLOCK_TO_SUBSECTION@@label=(.*?)@@caption=(.*?)@@", temp_content, flags=re.DOTALL):
                # Unescape "@@" if it was escaped in preprocess.py
                original_label_id = match.group(1).replace("@ @", "@@")
                caption_text = match.group(2).replace("@ @", "@@")
                target_anchor_slug = slugify(caption_text)
                if original_label_id in global_labels_to_targets:
                    # Log warning for redefinition (as in original code)
                    pass # Simplified for brevity
                global_labels_to_targets[original_label_id] = {
                    "file": final_flat_filename_for_map,
                    "anchor": f"#{target_anchor_slug}",  # anchor includes '#'
                    "caption_text": caption_text         # store original caption for link text
                }
        else:
            logging.warning(f"Expected .lagda.temp file not found for label mapping: {temp_file_path}")
    labels_map_json_path = build_mkdocs_dir / "labels_map.json"
    try:
        with open(labels_map_json_path, 'w', encoding='utf-8') as f_map:
            json.dump(global_labels_to_targets, f_map, indent=2)
        logging.info(f"Global label-to-target map saved to {labels_map_json_path}")
        return labels_map_json_path
    except Exception as e:
        logging.error(f"Failed to save labels_map.json: {e}", exc_info=True)
        return None # Indicate failure


def run_latex_conversion_stage(
    processed_files_info: List[ProcessedFileInfo],
    labels_map_json_path: Optional[Path], # Path to labels_map.json or dummy
    lua_filter_path: Path,
    postprocess_script_path: Path,
    build_mkdocs_dir: Path, # For dummy_labels_map.json
    agda_snapshot_src_dir: Path, # For removing original .lagda
) -> List[Path]:
    """Runs Pandoc and postprocess.py for LaTeX files, updating the snapshot.
    Returns a list of .lagda.md files successfully generated in the snapshot.
    """
    generated_snapshot_files: List[Path] = []
    if not processed_files_info:
        return generated_snapshot_files
    logging.info("\n--- Running Pandoc & postprocess.py for original LaTeX .lagda files ---")

    # Prepare dummy map path if needed
    dummy_map_path = build_mkdocs_dir / "dummy_labels_map.json"
    actual_labels_map_path_for_postprocess = labels_map_json_path
    if not (labels_map_json_path and labels_map_json_path.exists()):
        if not dummy_map_path.exists():
            with open(dummy_map_path, 'w', encoding='utf-8') as f_dummy: json.dump({}, f_dummy)
        actual_labels_map_path_for_postprocess = dummy_map_path
        logging.warning(f"Using dummy labels map: {dummy_map_path}")

    for file_info in processed_files_info:
        relative_path = file_info["relative_path_original"]
        logging.info(f"Pandoc/Postprocessing: {relative_path}")
        temp_lagda_path = file_info["temp_path"]
        intermediate_md_path = file_info["intermediate_md_path"]          # \
        current_code_blocks_json = file_info["code_blocks_json_path"]     #  from LagdaProcessingPaths
        snapshot_target_lagda_md_path = file_info["snapshot_target_path"] # /
        try:
            # -- pandoc+lua --
            run_command([
                "pandoc", str(temp_lagda_path),
                "-f", "latex", "-t", "gfm+attributes",
                "--lua-filter", str(lua_filter_path),
                "-o", str(intermediate_md_path)
            ])
            # -- postprocess --
            postprocess_args = [
                "python", str(postprocess_script_path),
                str(intermediate_md_path),
                str(current_code_blocks_json),
                str(actual_labels_map_path_for_postprocess),
                str(snapshot_target_lagda_md_path) # Output file
            ]
            run_command(postprocess_args)

            if snapshot_target_lagda_md_path.exists():
                generated_snapshot_files.append(snapshot_target_lagda_md_path)
                logging.info(f"  Successfully generated {snapshot_target_lagda_md_path.relative_to(agda_snapshot_src_dir)}")
                # Remove original .lagda from snapshot
                snapshot_original_latex_lagda = agda_snapshot_src_dir / relative_path
                if snapshot_original_latex_lagda.exists() and snapshot_original_latex_lagda.is_file():
                    snapshot_original_latex_lagda.unlink(missing_ok=True)
                    logging.info(f"  Removed original .lagda from snapshot: {snapshot_original_latex_lagda.name}")
            else:
                logging.error(f"  Postprocessed file not found: {snapshot_target_lagda_md_path.name}")

        except Exception as e:
            logging.error(f"Error during Pandoc/Postprocess for {relative_path}: {e}", exc_info=True)
            # Decide on error handling: continue, or re-raise?
    return generated_snapshot_files


def collect_all_literate_md_in_snapshot(snapshot_src_dir: Path) -> List[Path]:
    """Globs for all .lagda.md files in the snapshot directory and sorts them."""
    all_lagda_md_files = sorted(list(snapshot_src_dir.rglob("*.lagda.md")))
    logging.info(f"\nFound {len(all_lagda_md_files)} total unique literate .md files in snapshot for Agda processing.")
    for f_path in all_lagda_md_files:
        logging.debug(f"  Candidate for Agda: {f_path.relative_to(snapshot_src_dir)}")
    return all_lagda_md_files


def publish_to_mkdocs_docs(
    run_agda_html_flag: bool,
    candidate_literate_md_files: List[Path], # All .lagda.md files in snapshot
    agda_snapshot_src_dir: Path,
    mkdocs_docs_dir: Path,
    master_agda_file_name: str = "Ledger.lagda.md" # Default master file
) -> List[str]:
    """
    Runs Agda --html if requested, or copies snapshot files to mkdocs_docs_dir.
    Returns a list of flat markdown filenames for the MkDocs navigation.
    """
    final_md_files_for_nav: List[str] = []

    if run_agda_html_flag:
        logging.info(f"\nRunning Agda --html, outputting to {mkdocs_docs_dir}...")
        master_agda_file_in_snapshot = agda_snapshot_src_dir / master_agda_file_name
        if not master_agda_file_in_snapshot.exists():
            logging.error(f"Master Agda file '{master_agda_file_name}' not found in snapshot: {master_agda_file_in_snapshot}")
            logging.warning("Skipping Agda --html. Falling back to copying snapshot files.")
            # Fallback directly to copying (เหมือนกับ else block)
            run_agda_html_flag = False # Force fallback

        if run_agda_html_flag: # Check again in case it was flipped by missing master file
            try:
                run_command([
                    "agda", "--html", "--html-highlight=auto",
                    f"--html-dir={mkdocs_docs_dir.resolve()}",
                    "-i", ".", # CWD is agda_snapshot_src_dir
                    master_agda_file_name # Relative to CWD
                ], cwd=agda_snapshot_src_dir.resolve()) #.resolve() ensures absolute path for cwd
                logging.info(f"Agda --html command completed. Files generated in {mkdocs_docs_dir}.")

                # Collect Agda-generated .md files for navigation
                for gen_file in mkdocs_docs_dir.glob("*.md"): # Agda outputs .md for literate Agda
                    if gen_file.name not in final_md_files_for_nav:
                        final_md_files_for_nav.append(gen_file.name)
                if not final_md_files_for_nav and candidate_literate_md_files: # If Agda ran but produced no .md files
                    logging.warning(f"Agda ran but no '.md' files were collected from {mkdocs_docs_dir}. This might indicate an issue.")

            except Exception as e_agda:
                logging.error(f"Agda --html command failed: {e_agda}", exc_info=True)
                logging.warning("Falling back to copying snapshot files (no Agda HTML highlighting).")
                run_agda_html_flag = False # Force fallback for the 'else' part

    if not run_agda_html_flag: # Fallback if --run-agda was false OR Agda failed
        logging.info("\nCopying .lagda.md files from snapshot with flat names (Agda --html skipped or failed)...")
        if not candidate_literate_md_files:
            logging.warning("No processed literate files in snapshot to copy to MkDocs.")
        for lagda_md_file in candidate_literate_md_files:
            copied_flat_name = copy_snapshot_file_with_flat_name( # copy_snapshot_file_with_flat_name is an existing helper
                lagda_md_file, agda_snapshot_src_dir, mkdocs_docs_dir
            )
            if copied_flat_name and copied_flat_name not in final_md_files_for_nav:
                final_md_files_for_nav.append(copied_flat_name)
    return final_md_files_for_nav

def deploy_static_mkdocs_assets(
    mkdocs_docs_dir: Path,
    mkdocs_css_dir: Path,
    mkdocs_js_dir: Path,
    run_agda_html_flag: bool, # To know if Agda.css is needed
    current_nav_files: List[str], # To check if index.md is already there
    # Paths to static assets (could be part of a config dict/object)
    custom_css_source: Path,
    custom_js_source: Path,
    index_md_template_source: Path,
    project_root: Path # For relative logging
) -> List[str]:
    """Copies static assets like CSS, JS, and index.md template to the docs folder.
    Returns the updated list of nav files (potentially adding index.md).
    """
    logging.info("\nAssembling static assets for MkDocs site...")
    assets_to_copy: Dict[Path, Path] = {} # Source -> Destination

    # Agda.css
    if run_agda_html_flag:
        try:
            agda_css_proc = run_command(["agda", "--print-agda-data-dir"], capture_output=True, check=False, text=True)
            if agda_css_proc.returncode == 0 and agda_css_proc.stdout:
                agda_data_dir = Path(agda_css_proc.stdout.strip())
                agda_css_source = agda_data_dir / "html" / "Agda.css"
                if agda_css_source.exists():
                    assets_to_copy[agda_css_source] = mkdocs_css_dir / "Agda.css"
                else: logging.warning(f"Agda.css not found at: {agda_css_source}")
            else: logging.warning(f"Could not find Agda.css via 'agda --print-agda-data-dir'. Stderr: {agda_css_proc.stderr}")
        except Exception as e: logging.warning(f"Error trying to find Agda.css: {e}")

    # Custom CSS/JS
    if custom_css_source.exists(): assets_to_copy[custom_css_source] = mkdocs_css_dir / custom_css_source.name
    if custom_js_source.exists(): assets_to_copy[custom_js_source] = mkdocs_js_dir / custom_js_source.name

    updated_nav_files = list(current_nav_files)
    home_page_filename = "index.md"
    mkdocs_index_final_path = mkdocs_docs_dir / home_page_filename

    # Handle index.md (only if not already generated by Agda processing)
    if not any(f.lower() == home_page_filename.lower() for f in updated_nav_files):
        if index_md_template_source.exists():
            assets_to_copy[index_md_template_source] = mkdocs_index_final_path
            logging.info(f"Using index.md template: {index_md_template_source}")
        elif not mkdocs_index_final_path.exists(): # Create minimal only if absolutely no index.md
            logging.warning("No 'index.md' generated or templated. Creating minimal index.md.")
            mkdocs_index_final_path.parent.mkdir(parents=True, exist_ok=True) # Ensure docs dir exists
            with open(mkdocs_index_final_path, "w", encoding="utf-8") as f: f.write("# Welcome\n")

        if home_page_filename not in updated_nav_files: # Add to nav if we copied/created it
            updated_nav_files.append(home_page_filename)


    for src, dest in assets_to_copy.items():
        try:
            if dest.exists() and dest.is_file(): # avoid warning for dirs
                # potentially being overwritten by a *different* version from assets
                logging.warning(f"  Overwrite: Asset '{src.name}' being copied to '{dest.relative_to(PROJECT_ROOT)}' "
                                f"is overwriting an existing file.")
            logging.info(f"  Copying asset {src.name} to {dest.relative_to(project_root)}")
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)
        except Exception as e: logging.error(f"Failed to copy asset {src} to {dest}: {e}")

    # Ensure unique list for nav, with index.md first.
    return sorted(
        list(set(updated_nav_files)),
        key=lambda f: (f.lower() != home_page_filename.lower(), f.lower())
    )

def generate_mkdocs_config(
    mkdocs_yml_target_path: Path, # This is MKDOCS_SRC_DIR / "mkdocs.yml"
    nav_files_from_docs_dir: List[str], # Flat list of .md files in docs/, used if nav.yml is not
    nav_yml_template_file: Path, # Path to nav.yml
    has_yaml_library: bool,
    # Dynamically determined extras that should always be added/ensured
    dynamic_extra_css: List[str],
    dynamic_extra_javascript: List[str]
) -> Path:
    logging.info(f"Updating/Finalizing {mkdocs_yml_target_path.name}...")

    mkdocs_config: Dict[str, Any] = {}

    if mkdocs_yml_target_path.exists() and has_yaml_library:
        try:
            with open(mkdocs_yml_target_path, 'r', encoding='utf-8') as f_yml:
                mkdocs_config = yaml.safe_load(f_yml) or {}
            logging.info(f"  Loaded existing {mkdocs_yml_target_path.name} as base configuration.")
        except Exception as e:
            logging.error(f"  Error loading existing {mkdocs_yml_target_path.name}: {e}. "
                          "Proceeding with minimal defaults and dynamic additions.", exc_info=True)
            mkdocs_config = {} # Reset to ensure defaults are applied
    elif not mkdocs_yml_target_path.exists():
        logging.warning(f"  Base {mkdocs_yml_target_path.name} not found (template dir likely "
                        "missing/empty or copy failed). Creating minimal config.")

    # Ensure essential keys exist if loaded config is very minimal or missing
    # These are sensible defaults if the base mkdocs.yml was missing or too sparse.
    mkdocs_config.setdefault("site_name", "Project Documentation")
    mkdocs_config.setdefault("theme", {"name": "material"})
    mkdocs_config.setdefault("use_directory_urls", False)

    current_extra_css = mkdocs_config.get("extra_css", [])
    if not isinstance(current_extra_css, list): current_extra_css = []
    for css_file in dynamic_extra_css:
        if css_file not in current_extra_css:
            current_extra_css.append(css_file)
    mkdocs_config["extra_css"] = current_extra_css

    current_extra_js = mkdocs_config.get("extra_javascript", [])
    if not isinstance(current_extra_js, list): current_extra_js = []
    for js_file in dynamic_extra_javascript:
        if js_file not in current_extra_js:
            current_extra_js.append(js_file)
    mkdocs_config["extra_javascript"] = current_extra_js

    # Default markdown extensions if none are specified in the template
    mkdocs_config.setdefault("markdown_extensions", [
        "admonition", "pymdownx.details", "pymdownx.superfences", "attr_list", "md_in_html",
        {"toc": {"permalink": True}},
        {"pymdownx.highlight": {"anchor_linenums": True, "use_pygments": True}},
        "pymdownx.emoji",
    ])

    # --- Navigation Handling ---
    nav_structure_for_yaml: Optional[List[Dict[str, Any]]] = None
    if nav_yml_template_file.exists() and has_yaml_library:
        logging.info(f"  Attempting to load navigation structure from {nav_yml_template_file.name}.")
        try:
            with open(nav_yml_template_file, 'r', encoding='utf-8') as f_nav:
                nav_data = yaml.safe_load(f_nav)
            if isinstance(nav_data, list): # Basic validation: nav should be a list
                nav_structure_for_yaml = nav_data
                logging.info(f"  Successfully loaded navigation from {nav_yml_template_file.name}.")
            elif nav_data is not None: # It loaded something, but not a list
                logging.warning(f"  Content of {nav_yml_template_file.name} is not a valid list structure for 'nav'. "
                                "Falling back to generated navigation.")
            # If nav_data is None (empty file), it will also fall through.
        except Exception as e:
            logging.warning(f"  Error loading or parsing {nav_yml_template_file.name}: {e}. "
                            "Falling back to generated navigation.", exc_info=True)
    elif nav_yml_template_file.exists() and not has_yaml_library:
        logging.warning(f"  Navigation template {nav_yml_template_file.name} found but PyYAML not installed. "
                        "Generating navigation.")

    if nav_structure_for_yaml is None: # If nav.yml not used or failed to load
        logging.info("  Generating navigation from processed files in docs/ directory.")
        nav_structure_for_yaml = build_nav_from_flat_files(nav_files_from_docs_dir)

    mkdocs_config['nav'] = nav_structure_for_yaml
    logging.info("  Set 'nav' section in configuration.")

    # Write the updated/generated mkdocs.yml
    try:
        mkdocs_yml_target_path.parent.mkdir(parents=True, exist_ok=True) # Ensure target dir exists
        if has_yaml_library:
            with open(mkdocs_yml_target_path, "w", encoding="utf-8") as f_yml:
                yaml.dump(mkdocs_config, f_yml, sort_keys=False, default_flow_style=False, allow_unicode=True, width=1000)
        else: # Fallback to JSON
            with open(mkdocs_yml_target_path, "w", encoding="utf-8") as f_yml_json:
                json.dump(mkdocs_config, f_yml_json, indent=2)
            logging.warning(f"  Generated {mkdocs_yml_target_path.name} as JSON (PyYAML not installed).")
        logging.info(f"  Successfully wrote final configuration to {mkdocs_yml_target_path.name}.")
    except Exception as e:
        logging.error(f"  Error writing {mkdocs_yml_target_path.name}: {e}", exc_info=True)

    return mkdocs_yml_target_path

# --- Main Pipeline Logic ---
def main(run_agda_html=False):
    """Orchestrates the documentation build pipeline."""
    logging.info("Starting MkDocs build process...")
    logging.info(f"Run Agda --html flag: {run_agda_html}")

    # 1. Setup directories and logging.
    logging.info("Setting up build directories and logging...")
    setup_directories()
    setup_logging()

    # We now populate MKDOCS_SRC_DIR from static template content
    logging.info(f"Initializing {MKDOCS_SRC_DIR.name} from template source: "
                 f"{STATIC_MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
    if STATIC_MKDOCS_SRC_DIR.exists():
        try:
            # Copytree will copy all contents from STATIC_MKDOCS_SRC_DIR into MKDOCS_SRC_DIR
            shutil.copytree(STATIC_MKDOCS_SRC_DIR, MKDOCS_SRC_DIR, dirs_exist_ok=True)
            logging.info(f"  Successfully copied base structure to {MKDOCS_SRC_DIR.name}.")
        except Exception as e:
            logging.error(f"  Failed to copy static template from {STATIC_MKDOCS_SRC_DIR.name} "
                          f"to {MKDOCS_SRC_DIR.name}: {e}", exc_info=True)
            # Decide if this is a fatal error. If mkdocs.yml is expected from here, it might be.
            # For now, we'll let it proceed, and later stages might fail if expected files are missing.
    else:
        logging.warning(f"  Static template directory {STATIC_MKDOCS_SRC_DIR.name} not found. "
                        f"{MKDOCS_SRC_DIR.name} may be missing essential base files like mkdocs.yml.")
        # Ensure essential subdirectories like docs/ are created if the template didn't provide them
        MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
        MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True) # Typically docs/css
        MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)  # Typically docs/js

    # path to mkdocs.yml that was potentially copied or needs to be created/updated
    mkdocs_yml_in_build_path = MKDOCS_SRC_DIR / "mkdocs.yml"

    # 2. Get path to or generate macros.json.
    macros_json_path = macros_path(MACROS_JSON, GENERATE_MACROS_PY, MACROS_STY_PATH)

    # 3. Create Agda source snapshot
    create_agda_snapshots(SRC_DIR, AGDA_SNAPSHOT_SRC_DIR, LIB_EXTS_DIR, AGDA_SNAPSHOT_LIB_EXTS_DIR)

    # 4. Convert .agda to .lagda.md in src snapshot only
    logging.info(f"\n--- Stage 4: Converting .agda files in snapshot to .lagda.md ---")
    convert_agda_to_lagda(AGDA_SNAPSHOT_SRC_DIR, PROJECT_ROOT)

    # Clean up .agda files from src snapshot after they've been converted
    logging.info("  Cleaning up processed .agda files from snapshot...")
    for agda_file_in_snapshot in list(AGDA_SNAPSHOT_SRC_DIR.rglob("*.agda")):
        corresponding_lagda_md = agda_file_in_snapshot.with_suffix(".lagda.md")
        if corresponding_lagda_md.exists(): # If conversion produced a .lagda.md
            logging.debug(f"    Removing '{agda_file_in_snapshot.name}' as its .lagda.md now exists.")
            agda_file_in_snapshot.unlink(missing_ok=True) # missing_ok in case it was already handled

    # 5. Generate snapshot .agda-lib file
    logging.info(f"\n--- Stage 5: Generating snapshot .agda-lib file ---")
    agda_lib_deps = [
        "standard-library", "standard-library-classes", "standard-library-meta", "abstract-set-theory", "iog-prelude"
    ]
    generate_agda_lib_file(AGDA_SNAPSHOT_SRC_DIR, AGDA_SNAPSHOT_LIB_EXTS_DIR, agda_lib_deps)

    # 6. Process LaTeX-based literate .lagda files in src snapshot:
    #    Identify .lagda (LaTeX) files still in the snapshot. These are the ones that
    #    were not .lagda.md or .agda files in the original src/.
    latex_files_in_snapshot_to_process: List[Path] = sorted(list(AGDA_SNAPSHOT_SRC_DIR.rglob("*.lagda")))

    processed_info_for_latex_pipeline: List[ProcessedFileInfo] = [] # For files going through the full LaTeX pipeline

    if latex_files_in_snapshot_to_process:
        logging.info(f"\n--- Stage 6: Preparing {len(latex_files_in_snapshot_to_process)} "
                     "LaTeX .lagda files from snapshot for conversion pipeline ---")

        for lagda_tex_file_in_snapshot in latex_files_in_snapshot_to_process:
            # This file is already in the snapshot and needs the full pipeline.
            # The relative path for LagdaProcessingPaths etc. is relative to AGDA_SNAPSHOT_SRC_DIR.
            current_relative_path = lagda_tex_file_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR)
            paths = LagdaProcessingPaths(current_relative_path)

            # Calculate final_flat_md_filename (as you had it)
            module_name_parts = list(current_relative_path.parent.parts)
            file_stem_for_flat_name = current_relative_path.stem # e.g., "File" from "Module/File.lagda"

            is_index_file_stem = file_stem_for_flat_name.lower() == "index"
            if not module_name_parts and is_index_file_stem: module_name_flat = "index"
            elif not module_name_parts: module_name_flat = file_stem_for_flat_name
            else:
                current_module_path_parts = list(module_name_parts)
                if not is_index_file_stem: current_module_path_parts.append(file_stem_for_flat_name)
                module_name_flat = ".".join(part for part in current_module_path_parts if part)
            final_flat_md_filename = module_name_flat + ".md"

            file_info: ProcessedFileInfo = {
                "original_path": lagda_tex_file_in_snapshot, # Input for preprocess.py is the .lagda file in the snapshot
                "temp_path": paths.temp_lagda,
                "code_blocks_json_path": paths.code_blocks_json,
                "intermediate_md_path": paths.intermediate_md,
                "snapshot_target_path": paths.snapshot_target_lagda_md, # Output .lagda.md in snapshot
                "final_flat_md_filename": final_flat_md_filename,
                "relative_path_original": current_relative_path # For postprocess to find original .lagda for deletion
            }
            processed_info_for_latex_pipeline.append(file_info)
    else:
        logging.info(f"\n--- Stage 6: No LaTeX .lagda files found in snapshot requiring conversion pipeline ---")


    # --- Stage 6a: Run preprocess.py on the identified LaTeX .lagda files ---
    # The `run_latex_preprocessing_stage` function from your modular build.py needs to be
    # adapted to take this `processed_info_for_latex_pipeline`. Its core loop would iterate this list,
    # run `preprocess.py` using `file_info["original_path"]` as input, and use other paths from `file_info`.
    # For simplicity, I'll show the loop here if `run_latex_preprocessing_stage` isn't adapted yet.

    successfully_preprocessed_info: List[ProcessedFileInfo] = []
    if processed_info_for_latex_pipeline:
        logging.info(f"\n--- Preprocessing {len(processed_info_for_latex_pipeline)} LaTeX files from snapshot ---")
        for file_info in processed_info_for_latex_pipeline:
            LagdaProcessingPaths(file_info['relative_path_original']).ensure_parent_dirs_exist()
            logging.info(f"  Preprocessing: {file_info['relative_path_original']}")
            try:
                run_command([
                    "python", str(PREPROCESS_PY),
                    str(file_info["original_path"]), # This is the .lagda file in the snapshot
                    str(macros_json_path), # Path to macros.json from macros_path()
                    str(file_info["code_blocks_json_path"])
                ], stdout_file=str(file_info["temp_path"]))
                successfully_preprocessed_info.append(file_info) # Add if preprocess succeeded
            except Exception as e:
                logging.error(f"  Error during preprocess.py for {file_info['relative_path_original']}: {e}", exc_info=True)
    # `successfully_preprocessed_info` is now the list for the next stages.

    # --- Stage 6b: Build Global Label Map ---
    labels_map_file: Optional[Path] = build_global_label_map(
        successfully_preprocessed_info, # Use only successfully preprocessed files
        BUILD_MKDOCS_DIR
    )

    # --- Stage 6c: Run pandoc+lua and postprocess.py ---
    # This uses `successfully_preprocessed_info`. `run_latex_conversion_stage` should
    # use `file_info["original_path"]` (the .lagda file in snapshot) and convert it,
    # placing the output at `file_info["snapshot_target_path"]`.
    # It should also delete file_info["original_path"] (the .lagda file) from snapshot.
    run_latex_conversion_stage(
        successfully_preprocessed_info,
        labels_map_file,
        LUA_FILTER,
        POSTPROCESS_PY,
        BUILD_MKDOCS_DIR,
        AGDA_SNAPSHOT_SRC_DIR
    )

    # 7. Collect all .lagda.md files from snapshot.
    # - .lagda.md files originally in src/ and copied/preserved.
    # - .lagda.md files converted from .agda files in src/.
    # - .lagda.md files converted from .lagda files in src/.
    # AGDA_SNAPSHOT_SRC_DIR should now only contain .lagda.md files and supporting files (like .agda-lib).
    all_snapshot_lagda_md_files: List[Path] = collect_all_literate_md_in_snapshot(AGDA_SNAPSHOT_SRC_DIR)

    # 8. Agda HTML Generation / Copy to MkDocs docs
    #    This stage uses `all_snapshot_lagda_md_files` which includes all sources.
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)
    nav_files_in_docs: List[str] = publish_to_mkdocs_docs(
        run_agda_html,
        all_snapshot_lagda_md_files,
        AGDA_SNAPSHOT_SRC_DIR,
        MKDOCS_DOCS_DIR
    )

    # 9. Assemble MkDocs static assets (CSS, JS, index.md)
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)   # MKDOCS_CSS_DIR needs to exist
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)    # MKDOCS_JS_DIR needs to exist
    final_nav_list: List[str] = deploy_static_mkdocs_assets(
        MKDOCS_DOCS_DIR, MKDOCS_CSS_DIR, MKDOCS_JS_DIR, run_agda_html,
        nav_files_in_docs, CUSTOM_CSS_SOURCE, CUSTOM_JS_SOURCE, INDEX_MD_TEMPLATE, PROJECT_ROOT
    )

    dynamic_css_list_for_config = []
    if (MKDOCS_CSS_DIR / "Agda.css").exists():
        dynamic_css_list_for_config.append("css/Agda.css")
    # CUSTOM_CSS_SOURCE is Path object for original custom.css
    if CUSTOM_CSS_SOURCE.exists() and (MKDOCS_CSS_DIR / CUSTOM_CSS_SOURCE.name).exists():
        dynamic_css_list_for_config.append(f"css/{CUSTOM_CSS_SOURCE.name}")

    dynamic_js_list_for_config = []
    if CUSTOM_JS_SOURCE.exists() and (MKDOCS_JS_DIR / CUSTOM_JS_SOURCE.name).exists():
        dynamic_js_list_for_config.append(f"js/{CUSTOM_JS_SOURCE.name}")

    mkdocs_yml_final_path = generate_mkdocs_config(
        mkdocs_yml_in_build_path,    # Path to the mkdocs.yml to be updated/created
        final_nav_list,              # List of actual .md files in docs/ for fallback nav generation
        NAV_YML_TEMPLATE_PATH,       # Path to the nav.yml template
        HAS_YAML,
        dynamic_extra_css=dynamic_css_list_for_config,
        dynamic_extra_javascript=dynamic_js_list_for_config
    )

    # 10. Final messages and cleanup
    logging.info(f"\nBuild script finished successfully!")
    logging.info(f"Primary input for Shake/Agda (if used): {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Full log saved to: {LOG_FILE.relative_to(PROJECT_ROOT)}")
    logging.info(f"To serve the site locally, CWD to {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)} and run \"mkdocs serve\"")

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
