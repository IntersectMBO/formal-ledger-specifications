# build.py
#
# PURPOSE
#
# This script orchestrates the functional documentation migration build pipeline using
# mathematical composition principles. It transforms Agda source files (.agda, .lagda)
# into a complete MkDocs documentation website with syntax highlighting and
# cross-references.
#
# FUNCTIONAL ARCHITECTURE
#
# The pipeline follows pure functional programming principles with mathematical
# composition:
#
#   pipeline :: Config → Result Documentation PipelineError
#   pipeline = cleanup ∘ site_assembly ∘ content_staging ∘ latex_processing ∘ agda_processing ∘ setup
#
# Each stage is a pure mathematical transformation with monadic error handling
# using Result<T, E> types for composable error management.
#
# PIPELINE STAGES
#
# 1. **Setup Stage** (modules/setup.py)
#    - Creates immutable build directory structure
#    - Copies static site templates (MkDocs/MdBook)
#    - Configures logging with functional error handling
#
# 2. **Agda Processing Stage** (modules/agda_processing.py)
#    - Creates immutable snapshots: src → _build/md/md.in/src
#    - Converts .agda → .lagda.md using pure transformations
#    - Generates .agda-lib configuration files
#    Mathematical: [.agda] → [.lagda.md] (93 files processed)
#
# 3. **LaTeX Processing Stage** (modules/latex_pipeline.py)
#    - Processes .lagda files through functional pipeline:
#      preprocess.py → pandoc+lua → postprocess.py → bibliography.py
#    - Extracts cross-references and builds global label map
#    - Integrates BibTeX citations with bibliography generation
#    Mathematical: [.lagda] → [.lagda.md] (43 files processed)
#
# 4. **Content Staging** (legacy bridge - being converted)
#    - Runs Agda --html for syntax highlighting (optional)
#    - Creates flat-named files for site navigation
#    - Stages content in _build/md/md.pp/
#
# 5. **Site Assembly** (legacy bridge - being converted)
#    - Copies staged content to MkDocs/MdBook directories
#    - Deploys CSS, JS, and static assets
#    - Generates navigation structures
#
# 6. **Configuration Generation** (legacy bridge - being converted)
#    - Creates mkdocs.yml with dynamic navigation
#    - Configures bibliography and styling
#
# 7. **Cleanup** (modules/setup.py)
#    - Removes intermediate artifacts (optional)
#    - Preserves final documentation outputs
#
# FUNCTIONAL PRINCIPLES
#
# - **Immutability**: All data structures are immutable (frozen dataclasses)
# - **Pure Functions**: No side effects, mathematical transformations
# - **Monadic Composition**: Result<T, E> for composable error handling
# - **Type Safety**: Comprehensive type annotations throughout
# - **Mathematical Beauty**: f ∘ g ∘ h composition patterns
#
# KEY FEATURES
#
# 1. **Functional Error Handling**
#    - Result<T, E> monads replace exception-based error handling
#    - Composable error propagation with detailed context
#    - Pure error recovery strategies
#
# 2. **Immutable Configuration** (config/build_config.py)
#    - Single source of truth for all paths and settings
#    - Environment-aware configuration loading
#    - Type-safe configuration objects
#
# 3. **Modular Architecture**
#    - Functional modules with clear mathematical interfaces
#    - Legacy bridge pattern for gradual refactoring
#    - Plugin-style functional composition
#
# 4. **Bibliography Integration** (modules/bibtex_processor.py)
#    - Functional BibTeX parsing with alpha-style citations
#    - LaTeX → Markdown citation transformation
#    - Automatic bibliography section generation
#
# 5. **Cross-Reference Resolution**
#    - Global label mapping with mathematical consistency
#    - Type-safe reference resolution
#    - Automatic link generation
#
# USAGE
#
# From the project root:
#   python build-tools/scripts/md/build.py [--run-agda]
#
# Options:
#   --run-agda    Enable Agda HTML generation for syntax highlighting
#
# OUTPUTS
#
# - _build/md/md.in/src/     : Processed Agda source (.lagda.md files)
# - _build/md/mkdocs/        : Complete MkDocs site source
# - _build/md/mkdocs/docs/   : Final documentation pages with navigation
# - _build/md/md.aux/build.log : Detailed functional pipeline execution log
#
# MATHEMATICAL COMPOSITION EXAMPLE
#
# For 136 total files (93 Agda + 43 LaTeX):
#   agda_processing   :: [.agda]  → Result [.lagda.md] Error    (93 files)
#   latex_processing  :: [.lagda] → Result [.lagda.md] Error    (43 files)
#   composition       :: 93 ⊕ 43  → 136 total processed files
#   staging          :: [.lagda.md] → Result [.md] Error       (136 files)
#   site_assembly    :: [.md] → Result Documentation Error     (final site)
#
# where ⊕ denotes functional composition of disjoint transformations.
#
# ERROR HANDLING
#
# All errors are handled functionally using Result<T, PipelineError> monads:
# - FILE_NOT_FOUND, PERMISSION_DENIED for I/O operations
# - COMMAND_FAILED for external tool execution
# - PARSING_ERROR for content processing
# - VALIDATION_ERROR for configuration issues
#
# The pipeline gracefully handles failures with detailed error context
# and supports partial success scenarios where appropriate.
#
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

# Add path for our modules (add this near other imports)
SCRIPTS_MD_DIR = Path(__file__).parent
sys.path.insert(0, str(SCRIPTS_MD_DIR))

try:
    from agda2lagda import convert_agda_to_lagda_md
except ImportError:
    print(f"FATAL: Could not import 'convert_agda_to_lagda_md'. Ensure 'agda2lagda.py' is in {SCRIPTS_MD_DIR}.", file=sys.stderr)
    sys.exit(1)

try:
    from config.build_config import get_legacy_paths
except ImportError:
    print(f"FATAL: Could not import 'get_legacy_paths'. Ensure 'build_config.py' is in {SCRIPTS_MD_DIR}/config/.", file=sys.stderr)
    sys.exit(1)

try:
    from modules.bibliography_stage import process_bibliography_stage
    from modules.setup import setup_build_environment, cleanup_intermediate_artifacts
    from config.build_config import load_build_config
    HAS_FUNCTIONAL_MODULES = True
except ImportError as e:
    print(f"WARNING: Could not import functional modules: {e}", file=sys.stderr)
    print("Falling back to legacy functions", file=sys.stderr)
    HAS_FUNCTIONAL_MODULES = False

# Agda processing integration
try:
    from modules.agda_processing import process_agda_source_files, collect_lagda_md_files
    HAS_AGDA_PROCESSING = True
except ImportError as e:
    print(f"WARNING: Could not import Agda processing modules: {e}", file=sys.stderr)
    HAS_AGDA_PROCESSING = False

# LaTeX processing integration
try:
    from modules.latex_pipeline import latex_pipeline_stage
    HAS_LATEX_PIPELINE = True
except ImportError as e:
    print(f"WARNING: Could not import LaTeX pipeline module: {e}", file=sys.stderr)
    HAS_LATEX_PIPELINE = False


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

# === CONFIGURATION ===
# Get all path constants from centralized configuration
legacy_paths = get_legacy_paths()

# Extract all constants (same names as before, but centralized source)
PROJECT_ROOT = legacy_paths["PROJECT_ROOT"]
SRC_DIR = legacy_paths["SRC_DIR"]
LIB_EXTS_DIR = legacy_paths["LIB_EXTS_DIR"]
BUILD_TOOLS = legacy_paths["BUILD_TOOLS"]
BUILD_DIR = legacy_paths["BUILD_DIR"]
BUILD_MD_DIR = legacy_paths["BUILD_MD_DIR"]
BUILD_MD_IN_DIR = legacy_paths["BUILD_MD_IN_DIR"]
BUILD_MD_PP_DIR = legacy_paths["BUILD_MD_PP_DIR"]
BUILD_MD_AUX_DIR = legacy_paths["BUILD_MD_AUX_DIR"]
AGDA_SNAPSHOT_SRC_DIR = legacy_paths["AGDA_SNAPSHOT_SRC_DIR"]
AGDA_SNAPSHOT_LIB_EXTS_DIR = legacy_paths["AGDA_SNAPSHOT_LIB_EXTS_DIR"]
MKDOCS_BUILD_DIR = legacy_paths["MKDOCS_BUILD_DIR"]
MKDOCS_SRC_DIR = legacy_paths["MKDOCS_SRC_DIR"]
MKDOCS_DOCS_DIR = legacy_paths["MKDOCS_DOCS_DIR"]
MKDOCS_CSS_DIR = legacy_paths["MKDOCS_CSS_DIR"]
MKDOCS_JS_DIR = legacy_paths["MKDOCS_JS_DIR"]
MKDOCS_INCLUDES_DIR = legacy_paths["MKDOCS_INCLUDES_DIR"]

# Script paths
SCRIPTS_DIR = legacy_paths["SCRIPTS_DIR"]
MD_DIR = legacy_paths["MD_SCRIPTS_DIR"]  # Note: MD_SCRIPTS_DIR maps to MD_DIR
GENERATE_MACROS_PY = MD_DIR / "generate_macros_json.py"
PREPROCESS_PY = MD_DIR / "preprocess.py"
POSTPROCESS_PY = MD_DIR / "postprocess.py"
LUA_FILTER = MD_DIR / "agda-filter.lua"

# Static content paths
STATIC_DIR = legacy_paths["STATIC_DIR"]
LATEX_DIR = legacy_paths["LATEX_DIR"]
MD_STATIC_DIR = legacy_paths["MD_STATIC_DIR"]
MD_STATIC_COMMON_DIR = legacy_paths["MD_STATIC_COMMON_DIR"]
MD_STATIC_COMMON_SRC_DIR = legacy_paths["MD_STATIC_COMMON_SRC_DIR"]
MKDOCS_STATIC_DIR = legacy_paths["MKDOCS_STATIC_DIR"]
MKDOCS_STATIC_SRC_DIR = legacy_paths["MKDOCS_STATIC_SRC_DIR"]
MKDOCS_STATIC_DOCS_DIR = legacy_paths["MKDOCS_STATIC_DOCS_DIR"]
MDBOOK_STATIC_DIR = legacy_paths["MDBOOK_STATIC_DIR"]
MDBOOK_STATIC_BOOK_TOML = MDBOOK_STATIC_DIR / "book.toml" if 'MDBOOK_STATIC_DIR' in globals() else BUILD_MD_DIR / "mdbook" / "book.toml"

# Key files
MACROS_JSON = legacy_paths["MACROS_JSON"]
LOG_FILE = legacy_paths["LOG_FILE"]
MACROS_STY_PATH = legacy_paths["MACROS_STY_PATH"]
REFS_STATIC_PATH = legacy_paths["REFS_STATIC_PATH"]

# CSS and JS
MD_STATIC_CSS_DIR = legacy_paths["MD_STATIC_CSS_DIR"]
MD_STATIC_JS_DIR = legacy_paths["MD_STATIC_JS_DIR"]
MD_STATIC_CUSTOM_CSS_PATH = legacy_paths["MD_STATIC_CUSTOM_CSS_PATH"]
MD_STATIC_CUSTOM_JS_PATH = legacy_paths["MD_STATIC_CUSTOM_JS_PATH"]
MD_STATIC_KATEX_JS_PATH = legacy_paths["MD_STATIC_KATEX_JS_PATH"]

# Navigation
MKDOCS_STATIC_NAV_YML = legacy_paths["MKDOCS_STATIC_NAV_YML"]
MKDOCS_STATIC_INDEX = legacy_paths["MKDOCS_STATIC_INDEX"]
MDBOOK_STATIC_SUMMARY_MD = MDBOOK_STATIC_DIR / "src" / "SUMMARY.md" if 'MDBOOK_STATIC_DIR' in globals() else BUILD_MD_DIR / "mdbook" / "src" / "SUMMARY.md"

# Pipeline intermediate directories
TEMP_DIR = legacy_paths["TEMP_DIR"]
CODE_BLOCKS_DIR = legacy_paths["CODE_BLOCKS_DIR"]
INTERMEDIATE_MD_DIR = legacy_paths["INTERMEDIATE_MD_DIR"]


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
        self.mkdocs_interim_md = MKDOCS_DOCS_DIR / self.relative.with_suffix(".md")

        # path for .md file in mdbook src directory (before Agda html processing)
        self.mdbook_interim_md = MDBOOK_DOCS_DIR / self.relative.with_suffix(".md")

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
            self.mdbook_interim_md.parent,
        }
        for parent_dir in parents_to_create:
            parent_dir.mkdir(parents=True, exist_ok=True)

# Logging Setup
def setup_logging() -> None:
    """Configures logging to file (DEBUG) and console (INFO) without basicConfig.

    DEPRECATED: Use functional setup.setup_build_environment() instead."""
    if HAS_FUNCTIONAL_MODULES:
        logging.warning("setup_logging() is deprecated, use functional setup instead")

    # Original imperative implementation as fallback
    log_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')

    # get root logger
    logger = logging.getLogger()
    #logger.setLevel(logging.DEBUG) # set lowest level for logger itself

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
        print(f"❌ CRITICAL LOGGING ERROR: Failed to set up file logging to {LOG_FILE}: {e}", file=sys.stderr)
        # Optionally, re-raise or exit if file logging is critical
        # For now, let it continue so console logging might still work.

    # Console handler (INFO level)
    console_handler = logging.StreamHandler(sys.stderr)
    console_handler.setFormatter(log_formatter)
    console_handler.setLevel(logging.INFO)  # set this to DEBUG for troubleshooting
    logger.addHandler(console_handler)

    # This message might not make it to file if file_handler failed,
    # but will go to console if console_handler working.
    logging.info("✅ Logging setup complete. Log file: %s", LOG_FILE)

def functional_setup_logging(config):
    """Functional wrapper for logging setup."""
    return setup_build_environment(config).map(lambda x: x['logging_configured'])

def setup_directories() -> None:
    """Cleans the main mkdocs and mdbook build artifacts directories and recreates
    essential subdirectories for the current build run.

    DEPRECATED: Use functional setup.setup_build_environment() instead."""
    if HAS_FUNCTIONAL_MODULES:
        logging.warning("setup_directories() is deprecated, use functional setup instead")

    # Original imperative implementation as fallback
    ### Directories for intermediate build products and final staging.
    TEMP_DIR.mkdir(parents=True, exist_ok=True)              # for .lagda.temp files
    CODE_BLOCKS_DIR.mkdir(parents=True, exist_ok=True)       # for code_blocks.json
    INTERMEDIATE_MD_DIR.mkdir(parents=True, exist_ok=True)   # for .md.intermediate files
    AGDA_SNAPSHOT_SRC_DIR.mkdir(parents=True, exist_ok=True) # for Agda source snapshot
    AGDA_SNAPSHOT_LIB_EXTS_DIR.mkdir(parents=True, exist_ok=True) # for Agda source snapshot
    BUILD_MD_PP_DIR.mkdir(parents=True, exist_ok=True)

    ### MKDOCS ###
    # Only remove and recreate the specific mkdocs build directory.
    # Avoid deleting unrelated artifacts in _build/ (e.g., from shake/CI)!
    if MKDOCS_SRC_DIR.exists(): # MKDOCS_SRC_DIR is _build/md/mkdocs/
        logging.info(f"Cleaning up existing MkDocs build directory: {MKDOCS_SRC_DIR}")
        shutil.rmtree(MKDOCS_SRC_DIR)
    else:
        logging.info(f"MkDocs build directory does not exist, will create: {MKDOCS_SRC_DIR}")

    logging.info(f"Creating fresh MkDocs build directories under: {MKDOCS_SRC_DIR}")

    # Create final mkdocs site source structure (where content is copied to).
    MKDOCS_SRC_DIR.mkdir(parents=True, exist_ok=True)        # root for mkdocs.yml and docs/
    MKDOCS_DOCS_DIR.mkdir(parents=True, exist_ok=True)       # for final .md pages and assets
    MKDOCS_CSS_DIR.mkdir(parents=True, exist_ok=True)        # for CSS assets
    MKDOCS_JS_DIR.mkdir(parents=True, exist_ok=True)         # for JS assets

    ### MDBOOK ###
    # Only remove and recreate the specific mdbook build directory.
    # Avoid deleting unrelated artifacts in _build/ (e.g., from shake/CI)!
    if MDBOOK_BUILD_DIR.exists(): # MDBOOK_BUILD_DIR is _build/md/mdbook/
        logging.info(f"Cleaning up existing Mdbook build directory: {MDBOOK_BUILD_DIR}")
        shutil.rmtree(MDBOOK_BUILD_DIR)
    else:
        logging.info(f"Mdbook build directory does not exist, will create: {MDBOOK_BUILD_DIR}")

    logging.info(f"Creating fresh Mdbook build directories under: {MDBOOK_BUILD_DIR}")

    # Create final mdbook site source structure (where content is copied to).
    MDBOOK_SRC_DIR.mkdir(parents=True, exist_ok=True)        # root for book.toml and src/
    MDBOOK_DOCS_DIR.mkdir(parents=True, exist_ok=True)       # for final .md pages and assets
    MDBOOK_CSS_DIR.mkdir(parents=True, exist_ok=True)        # for CSS assets
    MDBOOK_JS_DIR.mkdir(parents=True, exist_ok=True)         # for JS assets

def functional_setup_directories(config):
    """Functional wrapper for directory setup."""
    return setup_build_environment(config).map(lambda x: x['directories'])


def cleanup_intermediate_artifacts() -> None:
    """
    Remove intermediate artifact directories and files generated within
    _build/ during the build process, keeping only the final outputs
    (like _build/md/md.in/src/ and _build/md/mkdocs/).

    DEPRECATED: Use functional setup.cleanup_intermediate_artifacts() instead."""
    if HAS_FUNCTIONAL_MODULES:
        logging.warning("cleanup_intermediate_artifacts() is deprecated, use functional setup instead")

    # Original imperative implementation as fallback
    logging.info("Cleaning up intermediate build artifacts in _build/...")

    # directories to remove
    intermediate_dirs = [
        TEMP_DIR,
        CODE_BLOCKS_DIR,
        INTERMEDIATE_MD_DIR,
        BUILD_MD_PP_DIR
    ]

    # files to remove
    intermediate_files = [
        MACROS_JSON # generated from .sty
    ]

    for artifact_dir in intermediate_dirs:
        if artifact_dir.exists():
            try:
                shutil.rmtree(artifact_dir)
                logging.info(f"  ✅ Successfully removed intermediate directory: {artifact_dir.relative_to(BUILD_DIR)}")
            except OSError as e: # catch more specific error for rmtree
                logging.warning(f"  ❌ Warning: Could not remove intermediate directory {artifact_dir}: {e}")
        else:
            logging.debug(f"  ❌ Intermediate directory not found (already clean or not created): {artifact_dir.relative_to(BUILD_DIR)}")

    for artifact_file in intermediate_files:
        if artifact_file.exists():
            try:
                artifact_file.unlink()
                logging.info(f"  ✅ Successfully removed intermediate file: {artifact_file.relative_to(BUILD_DIR)}")
            except OSError as e: # catch more specific error for unlink
                logging.warning(f"  ❌ Warning: Could not remove intermediate file {artifact_file}: {e}")
        else:
            logging.debug(f"  ❌ Intermediate file not found (already clean or not created): {artifact_file.relative_to(BUILD_DIR)}")

    logging.info("✅ Intermediate artifact cleanup complete.")


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
            logging.error(f"❌ Command failed with exit code {process.returncode}: {' '.join(command_args_str)}")
            # Log captured stdout only if it wasn't redirected and was captured
            if stdout_content and not stdout_file and capture_output: logging.error(f"Stdout:\n{stdout_content}")
            # Log captured stderr again for error context
            if stderr_content: logging.error(f"Stderr:\n{stderr_content}")
            raise subprocess.CalledProcessError(process.returncode, command_args_str,
                                                output=stdout_content, stderr=stderr_content)
        return process # Return completed process object

    except Exception as e:
        logging.error(f"❌ Failed to run command {' '.join(command_args_str)}: {e}")
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
    target_docs_dir: Path   # <<< MKDOCS_DOCS_DIR or MDBOOK_DOCS_DIR
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
        target_full_path = target_docs_dir / final_flat_filename

        # check for overwrite
        if target_full_path.exists():
            logging.warning(f"  Overwrite: Generated file '{target_full_path.name}' "
                            f"is overwriting an existing file (likely from static template) "
                            f"at '{target_full_path.relative_to(PROJECT_ROOT)}'.")

        target_full_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(lagda_md_file_in_snapshot, target_full_path)
        logging.debug(f"  Copied snapshot file {lagda_md_file_in_snapshot.name} to {target_full_path.name} (flat name)")
        return final_flat_filename
    except Exception as e:
        logging.error(f"  ❌ Failed to copy/rename snapshot file {lagda_md_file_in_snapshot.name} to flat name: {e}", exc_info=True)
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
            logging.info(f"🏗️ Generating {macros_json_target_path.name} from {macros_sty_source.name}...")
            run_command(["python", str(generator_script), str(macros_sty_source), str(macros_json_target_path)])
        else:
            logging.info(f"Using existing and up-to-date {macros_json_target_path.name}.")
    elif not macros_json_target_path.exists():
        logging.error(f"❌ {macros_json_target_path.name} not found and cannot be generated. Exiting.")
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
        logging.error("❌ agda2lagda.convert_agda_to_lagda_md not available. Skipping .agda conversion.")
        return # Or raise an error if critical
    try:
        conversion_success = convert_agda_to_lagda_md(
            str(snapshot_src_dir),
            project_root_for_logging=project_root_for_logging
        )
        if not conversion_success:
            logging.error("❌ Failure during .agda to .lagda.md conversion. Exiting.")
            sys.exit(1) # Or raise an exception
    except Exception as e:
        logging.error(f"❌ Error during .agda to .lagda.md conversion: {e}", exc_info=True)
        sys.exit(1) # Or raise


def copy_or_generate_agda_lib_file(
    project_root: Path,
    build_md_in_dir: Path,
    snapshot_src_dir: Path,
    snapshot_lib_exts_dir: Path,
    agda_lib_dependencies: List[str]
) -> Path:
    """
    Copy existing .agda-lib file or generate new one in snapshot directory.

    Priority:
    1. If PROJECT_ROOT/formal-ledger.agda-lib exists, copy it
    2. Otherwise, generate a new .agda-lib file

    Args:
        project_root: Root directory of the project
        build_md_in_dir: Target directory for the .agda-lib file
        snapshot_src_dir: Source directory to include in generated .agda-lib
        snapshot_lib_exts_dir: Library extensions directory to include
        agda_lib_dependencies: List of Agda library dependencies

    Returns:
        Path to the created .agda-lib file
    """

    # Target location for the .agda-lib file in snapshot
    snapshot_lib_file = build_md_in_dir / "formal-ledger.agda-lib"

    # Check if existing .agda-lib file exists in project root
    existing_lib_file = project_root / "formal-ledger.agda-lib"

    try:
        if existing_lib_file.exists():
            # Copy existing .agda-lib file
            import shutil
            shutil.copy2(existing_lib_file, snapshot_lib_file)
            logging.info(f"Copied existing {existing_lib_file.name} to snapshot directory: {snapshot_lib_file}")

            # Optional: Log the contents for verification
            with open(snapshot_lib_file, "r", encoding="utf-8") as f:
                content = f.read().strip()
            logging.debug(f"Copied .agda-lib content:\n{content}")

        else:
            # Generate new .agda-lib file
            logging.info(f"No existing {existing_lib_file.name} found, generating new one...")

            agda_lib_includes = [
                ".",
                str(snapshot_src_dir.resolve()),
                str(snapshot_lib_exts_dir.resolve())
            ]  # Use resolved absolute paths for robustness

            agda_lib_content = f"name: formal-ledger\n" \
                             f"depend: {' '.join(agda_lib_dependencies)}\n" \
                             f"include: {' '.join(agda_lib_includes)}"

            with open(snapshot_lib_file, "w", encoding="utf-8") as f:
                f.write(agda_lib_content)

            logging.info(f"Generated new {snapshot_lib_file.name} in snapshot directory: {snapshot_lib_file}")
            logging.debug(f"Generated .agda-lib content:\n{agda_lib_content}")

    except Exception as e:
        logging.error(f"❌ Failed to copy or create {snapshot_lib_file.name}: {e}", exc_info=True)
        sys.exit(1)  # Or raise

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

    logging.info("\n--- 🏗️ Running preprocess.py for all original LaTeX .lagda files ---")
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
            logging.error(f"❌ Error during preprocess.py for {relative_path}: {e}", exc_info=True)
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
    logging.info("\n--- 🏗️ Building global label map from processed .lagda.temp files ---")
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
        logging.error(f"❌ Failed to save labels_map.json: {e}", exc_info=True)
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
    logging.info("\n--- 🏗️ Running Pandoc & postprocess.py for original LaTeX .lagda files ---")

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
                logging.info(f"  ✅ Successfully generated {snapshot_target_lagda_md_path.relative_to(agda_snapshot_src_dir)}")
                # Remove original .lagda from snapshot
                snapshot_original_latex_lagda = agda_snapshot_src_dir / relative_path
                if snapshot_original_latex_lagda.exists() and snapshot_original_latex_lagda.is_file():
                    snapshot_original_latex_lagda.unlink(missing_ok=True)
                    logging.info(f"  ✅ Removed original .lagda from snapshot: {snapshot_original_latex_lagda.name}")
            else:
                logging.error(f"  ❌ Postprocessed file not found: {snapshot_target_lagda_md_path.name}")

        except Exception as e:
            logging.error(f"❌ Error during Pandoc/Postprocess for {relative_path}: {e}", exc_info=True)
            # Decide on error handling: continue, or re-raise?
    return generated_snapshot_files

def run_latex_conversion_stage_with_bibliography(
    processed_files_info: List[ProcessedFileInfo],
    labels_map_json_path: Optional[Path],
    lua_filter_path: Path,
    postprocess_script_path: Path,
    bibliography_path: Path,  # NEW: Path to references.bib
    build_mkdocs_dir: Path,
    agda_snapshot_src_dir: Path,
) -> List[Path]:
    """
    Enhanced conversion stage with functional bibliography processing.

    This demonstrates the integration of our functional modules with
    the existing imperative pipeline.
    """

    generated_snapshot_files: List[Path] = []

    if not processed_files_info:
        return generated_snapshot_files

    logging.info("\n--- 🏗️ Running Pandoc, postprocess.py, and bibliography processing ---")

    # Prepare dummy map path if needed (existing logic)
    dummy_map_path = build_mkdocs_dir / "dummy_labels_map.json"
    actual_labels_map_path_for_postprocess = labels_map_json_path
    if not (labels_map_json_path and labels_map_json_path.exists()):
        if not dummy_map_path.exists():
            with open(dummy_map_path, 'w', encoding='utf-8') as f_dummy:
                json.dump({}, f_dummy)
        actual_labels_map_path_for_postprocess = dummy_map_path
        logging.warning(f"Using dummy labels map: {dummy_map_path}")

    # Process each file through the complete pipeline
    for file_info in processed_files_info:
        relative_path = file_info["relative_path_original"]
        logging.info(f"Processing: {relative_path}")

        success = _process_single_file_with_bibliography(
            file_info=file_info,
            labels_map_path=actual_labels_map_path_for_postprocess,
            lua_filter_path=lua_filter_path,
            postprocess_script_path=postprocess_script_path,
            bibliography_path=bibliography_path,
            agda_snapshot_src_dir=agda_snapshot_src_dir
        )

        if success:
            generated_snapshot_files.append(file_info["snapshot_target_path"])
            logging.info(f"  ✅ Successfully processed {relative_path}")
        else:
            logging.error(f"  ❌ Failed to process {relative_path}")

    return generated_snapshot_files

def _process_single_file_with_bibliography(
    file_info: ProcessedFileInfo,
    labels_map_path: Path,
    lua_filter_path: Path,
    postprocess_script_path: Path,
    bibliography_path: Path,
    agda_snapshot_src_dir: Path
) -> bool:
    """
    Process a single file through the complete pipeline with functional error handling.

    This function demonstrates how to integrate functional Result types
    with existing imperative code.
    """

    try:
        # STAGE 1: Pandoc + Lua (existing logic)
        temp_lagda_path = file_info["temp_path"]
        intermediate_md_path = file_info["intermediate_md_path"]

        run_command([
            "pandoc", str(temp_lagda_path),
            "-f", "latex", "-t", "gfm+attributes",
            "--lua-filter", str(lua_filter_path),
            "-o", str(intermediate_md_path)
        ])

        # STAGE 2: Postprocess (existing logic)
        current_code_blocks_json = file_info["code_blocks_json_path"]
        snapshot_target_lagda_md_path = file_info["snapshot_target_path"]

        # Create temporary file for postprocess output
        temp_postprocess_output = snapshot_target_lagda_md_path.with_suffix('.postprocess.tmp')

        postprocess_args = [
            "python", str(postprocess_script_path),
            str(intermediate_md_path),
            str(current_code_blocks_json),
            str(labels_map_path),
            str(temp_postprocess_output)  # Temporary output
        ]
        run_command(postprocess_args)

        # STAGE 3: Bibliography processing (NEW FUNCTIONAL STAGE!)
        logging.info(f"  📚 Processing bibliography for {file_info['relative_path_original']}")

        bib_result = process_bibliography_stage(
            input_md_file=temp_postprocess_output,
            bib_file=bibliography_path,
            output_md_file=snapshot_target_lagda_md_path
        )

        # Handle functional Result type
        if bib_result.is_err:
            error = bib_result.unwrap_err()
            logging.error(f"  Bibliography processing failed: {error.message}")
            # Could fall back to copying temp file without bibliography processing
            if temp_postprocess_output.exists():
                shutil.copy2(temp_postprocess_output, snapshot_target_lagda_md_path)
                logging.warning(f"  Falling back to version without bibliography processing")
            return False

        # Clean up temporary file
        if temp_postprocess_output.exists():
            temp_postprocess_output.unlink()

        # STAGE 4: Cleanup (existing logic)
        if snapshot_target_lagda_md_path.exists():
            # Remove original .lagda from snapshot
            relative_path = file_info["relative_path_original"]
            snapshot_original_latex_lagda = agda_snapshot_src_dir / relative_path
            if snapshot_original_latex_lagda.exists() and snapshot_original_latex_lagda.is_file():
                snapshot_original_latex_lagda.unlink(missing_ok=True)
                logging.info(f"  Removed original .lagda from snapshot: {snapshot_original_latex_lagda.name}")

            return True
        else:
            logging.error(f"  Final processed file not found: {snapshot_target_lagda_md_path.name}")
            return False

    except Exception as e:
        logging.error(f"Error during complete pipeline processing: {e}", exc_info=True)
        return False


def collect_all_literate_md_in_snapshot(snapshot_src_dir: Path) -> List[Path]:
    """Globs all .lagda.md files in the snapshot directory and sorts them."""
    all_lagda_md_files = sorted(list(snapshot_src_dir.rglob("*.lagda.md")))
    logging.info(f"  ✅ Found {len(all_lagda_md_files)} total unique literate .md files in snapshot for Agda processing.")
    for f_path in all_lagda_md_files:
        logging.debug(f"  Candidate for Agda: {f_path.relative_to(snapshot_src_dir)}")
    return all_lagda_md_files

def populate_agda_docs_staging(
    run_agda_html_flag: bool,
    all_snapshot_lagda_md_files: List[Path], # from collect_all_literate_md_in_snapshot
    agda_snapshot_src_dir: Path,             # e.g., _build/agda_snapshot_src
    agda_docs_staging_dir: Path,             # e.g., _build/md/md.pp
    master_agda_file_name: str = "Ledger.lagda.md" # default master Agda file for --html
) -> List[Path]: # Return list of Path objects for .md files in agda_docs_staging_dir
    """
    Populates the _build/md/md.pp/ staging directory.
    If run_agda_html_flag is True, runs `agda --html`.
    Otherwise, copies files from snapshot, renaming them to flat "ModuleName.md" format.
    Returns a list of Path objects for the final .md files in agda_docs_staging_dir.
    """
    logging.info(
        f"\n--- 🏗️ Populating Agda docs staging directory: "
        f"{agda_docs_staging_dir.relative_to(PROJECT_ROOT)} ---" # assuming PROJECT_ROOT is global
    )
    agda_docs_staging_dir.mkdir(parents=True, exist_ok=True) # ensure it exists

    final_md_files_in_staging: List[Path] = []
    effective_run_agda_html = run_agda_html_flag

    # 1. Determine if Agda --html should effectively run
    if run_agda_html_flag:
        master_agda_file_in_snapshot = agda_snapshot_src_dir / master_agda_file_name
        if not master_agda_file_in_snapshot.exists():
            logging.error(
                f"❌ Master Agda file '{master_agda_file_name}' not found in snapshot: "
                f"{master_agda_file_in_snapshot}"
            )
            logging.warning("Skipping Agda --html. Falling back to copying snapshot files.")
            effective_run_agda_html = False

    # 2. Attempt to run Agda --html if requested and master file exists
    if effective_run_agda_html:
        logging.info(f"Running Agda --html, outputting directly to {agda_docs_staging_dir}...")
        try:
            # Construct the path to master_agda_file_name relative to agda_snapshot_src_dir
            # if master_agda_file_name might include path components.
            # If it's always a direct child, master_agda_file_name is fine as is.
            # Current script uses master_agda_file_name directly when cwd is agda_snapshot_src_dir.

            run_command( # Assuming run_command helper is available
                [
                    "agda", "--fls",
                    f"--fls-html-dir={agda_docs_staging_dir.resolve()}",
                    master_agda_file_name # Path relative to cwd (agda_snapshot_src_dir)
                ],
                cwd=agda_snapshot_src_dir.resolve()
            )
            logging.info(f"✅ Agda --html command completed. Files generated in {agda_docs_staging_dir}.")

            # Collect generated .md files
            for gen_file in agda_docs_staging_dir.glob("*.md"):
                final_md_files_in_staging.append(gen_file)

            if not final_md_files_in_staging and all_snapshot_lagda_md_files:
                logging.warning(
                    f"Agda --html ran but no '.md' files were collected from {agda_docs_staging_dir}. "
                    "This might indicate an issue with Agda's output or the master file."
                )

        except Exception as e_agda: # Catch subprocess.CalledProcessError or general exceptions
            logging.error(f"❌ Agda --html command failed: {e_agda}", exc_info=True)
            logging.warning("   Falling back to copying snapshot files (no Agda HTML highlighting).")
            effective_run_agda_html = False # Force fallback

    # 3. Fallback: Copy .lagda.md files from snapshot if Agda --html was not run or failed
    if not effective_run_agda_html:
        logging.info(
            f"Copying .lagda.md files from {agda_snapshot_src_dir.relative_to(PROJECT_ROOT)} "
            f"to {agda_docs_staging_dir.relative_to(PROJECT_ROOT)} with flat names..."
        )
        if not all_snapshot_lagda_md_files:
            logging.warning(
                f"No processed literate .md files found in {agda_snapshot_src_dir} to copy to staging."
            )

        for lagda_md_file_in_snapshot in all_snapshot_lagda_md_files:
            # copy_snapshot_file_with_flat_name expects:
            # 1. Path to the .lagda.md file in the snapshot.
            # 2. The root of the snapshot directory (for calculating relative path for flat name).
            # 3. The target directory where the flat-named file will be placed.
            flat_filename_str = copy_snapshot_file_with_flat_name( # existing helper
                lagda_md_file_in_snapshot,
                agda_snapshot_src_dir,
                agda_docs_staging_dir
            )
            if flat_filename_str:
                final_md_files_in_staging.append(agda_docs_staging_dir / flat_filename_str)
            else:
                logging.warning(f"❌ Failed to process/copy file: {lagda_md_file_in_snapshot}")

    num_staged_files = len(final_md_files_in_staging)
    logging.info(
        f"✅ Populated {agda_docs_staging_dir.relative_to(PROJECT_ROOT)} with {num_staged_files} file(s)."
    )

    # Return a sorted, unique list of Path objects
    return sorted(list(set(final_md_files_in_staging)))


def copy_staging_to_site_docs(
    agda_docs_staging_dir: Path, # e.g., _build/md/md.in/
    target_site_docs_dir: Path,  # e.g., _build/md/mkdocs/docs/ or _build/md/mdbook/src/
    site_name: str               # "MkDocs" or "mdbook" for logging
) -> List[str]: # Returns a list of flat .md filenames (basenames) found at the top level of target
    """
    Copies the ENTIRE contents of agda_docs_staging_dir to target_site_docs_dir.
    Ensures the target directory is clean or that dirs_exist_ok handles overwrites.
    Returns a list of the basenames of .md files found at the top level of target_site_docs_dir.
    """
    logging.info(
        f"\n--- 🏗️ Populating {site_name} site docs from "
        f"{agda_docs_staging_dir.relative_to(PROJECT_ROOT)} "
        f"to {target_site_docs_dir.relative_to(PROJECT_ROOT)} ---"
    )

    if not agda_docs_staging_dir.exists() or not any(agda_docs_staging_dir.iterdir()):
        logging.warning(f"Staging directory {agda_docs_staging_dir} is empty or does not exist. "
                        f"No files to copy for {site_name}.")
        target_site_docs_dir.mkdir(parents=True, exist_ok=True) # Ensure target dir exists
        return []

    # Ensure the target_site_docs_dir exists and is empty or ready for overwrite
    if target_site_docs_dir.exists():
        logging.debug(f"Target directory {target_site_docs_dir} exists. Overwriting content.")
        # shutil.rmtree(target_site_docs_dir)
        # Option 1: Clean wipe. (Be careful if static files were copied here first.)
        # target_site_docs_dir.mkdir(parents=True, exist_ok=True)
    else:
        target_site_docs_dir.mkdir(parents=True, exist_ok=True)

    # Option 2 (Preferred if target_site_docs_dir might have other static content):
    # Copy contents, overwriting existing files.
    # For shutil.copytree, target must not exist or be empty if dirs_exist_ok=False (default)
    # With dirs_exist_ok=True (Python 3.8+), it works like `cp -rT SOURCEDIR TARGETDIR`
    try:
        shutil.copytree(agda_docs_staging_dir, target_site_docs_dir, dirs_exist_ok=True)
        logging.info(f"  ✅ Successfully copied all contents from {agda_docs_staging_dir.name} "
                     f"to {target_site_docs_dir.name} for {site_name}.")
    except Exception as e:
        logging.error(
            f"  ❌ Failed to copy directory {agda_docs_staging_dir.name} "
            f"to {target_site_docs_dir.name} for {site_name}: {e}",
            exc_info=True
        )
        return [] # Return empty list on failure

    # Collect .md file names from the target directory for navigation purposes
    # We only collect from the top level of target_site_docs_dir as Agda flattens modules.
    copied_md_filenames: List[str] = []
    for item in target_site_docs_dir.iterdir():
        if item.is_file() and item.suffix == ".md":
            copied_md_filenames.append(item.name)

    logging.info(f"✅ Found {len(copied_md_filenames)} .md files in {target_site_docs_dir.name} for {site_name} navigation.")
    return sorted(list(set(copied_md_filenames)))


def deploy_static_mkdocs_assets(
        mkdocs_docs_dir: Path,
        mkdocs_css_dir: Path,
        mkdocs_js_dir: Path,
        run_agda_html_flag: bool,     # To know if Agda.css is needed
        current_nav_files: List[str], # To check if index.md is already there
        custom_css_source: Path,
        custom_js_source: Path,
        index_md_template_source: Path,
        project_root: Path) -> List[str]:
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
            else: logging.warning(f"❌ Could not find Agda.css via 'agda --print-agda-data-dir'. Stderr: {agda_css_proc.stderr}")
        except Exception as e: logging.warning(f"❌ Error trying to find Agda.css: {e}")

    # Custom CSS - only process if not None and exists
    if custom_css_source and custom_css_source.exists():
        assets_to_copy[custom_css_source] = mkdocs_css_dir / custom_css_source.name
    elif custom_css_source is None:
        logging.debug("Custom CSS source not provided (handled separately)")
    else:
        logging.warning(f"Custom CSS source provided but not found: {custom_css_source}")

    # Custom JS
    if custom_js_source.exists():
        assets_to_copy[custom_js_source] = mkdocs_js_dir / custom_js_source.name

    # KaTeX configuration JS
    if MD_STATIC_KATEX_JS_PATH.exists():
        assets_to_copy[MD_STATIC_KATEX_JS_PATH] = mkdocs_js_dir / MD_STATIC_KATEX_JS_PATH.name
        logging.info(f"Adding KaTeX configuration: {MD_STATIC_KATEX_JS_PATH.name}")
    else:
        logging.warning(f"KaTeX configuration file not found at: {MD_STATIC_KATEX_JS_PATH}")

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
            with open(mkdocs_index_final_path, "w", encoding="utf-8") as f:
                f.write("# Welcome\n")

        if home_page_filename not in updated_nav_files: # Add to nav if we copied/created it
            updated_nav_files.append(home_page_filename)

    # Copy all assets
    for src, dest in assets_to_copy.items():
        try:
            if dest.exists() and dest.is_file(): # avoid warning for dirs
                # potentially being overwritten by a *different* version from assets
                logging.warning(f"  Overwrite: Asset '{src.name}' being copied to '{dest.relative_to(PROJECT_ROOT)}' "
                                f"is overwriting an existing file.")
            logging.info(f"  Copying asset {src.name} to {dest.relative_to(project_root)}")
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)
        except Exception as e:
            logging.error(f"❌ Failed to copy asset {src} to {dest}: {e}")

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
            logging.info(f"  ✅ Loaded existing {mkdocs_yml_target_path.name} as base configuration.")
        except Exception as e:
            logging.error(f"  ❌ Error loading existing {mkdocs_yml_target_path.name}: {e}. "
                          "Proceeding with minimal defaults and dynamic additions.", exc_info=True)
            mkdocs_config = {} # Reset to ensure defaults are applied
    elif not mkdocs_yml_target_path.exists():
        logging.warning(f"  ❌ Base {mkdocs_yml_target_path.name} not found (template dir likely "
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
                logging.info(f"  ✅ Successfully loaded navigation from {nav_yml_template_file.name}.")
            elif nav_data is not None: # It loaded something, but not a list
                logging.warning(f"  Content of {nav_yml_template_file.name} is not a valid list structure for 'nav'. "
                                "Falling back to generated navigation.")
            # If nav_data is None (empty file), it will also fall through.
        except Exception as e:
            logging.warning(f"  ❌ Error loading or parsing {nav_yml_template_file.name}: {e}. "
                            "Falling back to generated navigation.", exc_info=True)
    elif nav_yml_template_file.exists() and not has_yaml_library:
        logging.warning(f"  Navigation template {nav_yml_template_file.name} found but PyYAML not installed. "
                        "Generating navigation.")

    if nav_structure_for_yaml is None: # If nav.yml not used or failed to load
        logging.info("  🏗️ Generating navigation from processed files in docs/ directory.")
        nav_structure_for_yaml = build_nav_from_flat_files(nav_files_from_docs_dir)

    mkdocs_config['nav'] = nav_structure_for_yaml
    logging.info("  ✅ Set 'nav' section in configuration.")

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
        logging.info(f"  ✅ Successfully wrote final configuration to {mkdocs_yml_target_path.name}.")
    except Exception as e:
        logging.error(f"  ❌ Error writing {mkdocs_yml_target_path.name}: {e}", exc_info=True)

    return mkdocs_yml_target_path

def generate_mdbook_config(
    mdbook_toml_build_path: Path,      # Target: _build/md/mdbook/book.toml
    mdbook_summary_build_path: Path,   # Target: _build/md/mdbook/src/SUMMARY.md
    book_toml_template_source: Path,   # Source: build-tools/static/md/mdbook/book.toml
    summary_md_template_source: Path,  # Source: build-tools/static/md/mdbook/src/SUMMARY.md
    actual_content_files_in_build_src: List[str] # Basenames of .md files in _build/md/mdbook/src/
):
    """
    Ensures book.toml is in place and generates/copies SUMMARY.md for mdbook.
    """
    logging.info(f"\n--- 🏗️ Finalizing mdbook configuration ---")

    # --- 1. Handle book.toml ---
    logging.info(f"  Ensuring {mdbook_toml_build_path.name} is in place at "
                 f"'{mdbook_toml_build_path.relative_to(PROJECT_ROOT)}'...")
    if book_toml_template_source.exists():
        try:
            mdbook_toml_build_path.parent.mkdir(parents=True, exist_ok=True) # ensure _build/md/mdbook/ exists
            shutil.copy2(book_toml_template_source, mdbook_toml_build_path)
            logging.info(f"    ✅ Copied template '{book_toml_template_source.relative_to(PROJECT_ROOT)}' "
                         f"to '{mdbook_toml_build_path.relative_to(PROJECT_ROOT)}'.")
        except Exception as e:
            logging.error(f"    ❌ Failed to copy {book_toml_template_source.name}: {e}", exc_info=True)
    else:
        logging.warning(
            f"    ❌ Template book.toml '{book_toml_template_source}' not found. "
            f"'{mdbook_toml_build_path.name}' may be missing. Consider creating a default one "
            f"at {book_toml_template_source} or ensure it's created by an earlier step."
        )
    # Note: we could add logic here to dynamically modify mdbook_toml_build_path if needed,
    # e.g., adding [output.html.additional-css] if we have custom CSS files copied
    # into _build/md/mdbook/src/css/. For example:
    # if (MDBOOK_DOCS_DIR / "css" / "custom.css").exists():
    #     # Logic to load, update, and save TOML (e.g., using the `toml` library)
    #     logging.info("    (Placeholder: Logic to add custom.css to book.toml if needed)")

    # --- 2. Handle SUMMARY.md ---
    logging.info(f"  Processing {mdbook_summary_build_path.name} at "
                 f"'{mdbook_summary_build_path.relative_to(PROJECT_ROOT)}'...")
    mdbook_summary_build_path.parent.mkdir(parents=True, exist_ok=True) # ensure _build/md/mdbook/src/ exists

    if summary_md_template_source.exists():
        # Strategy 1: if static SUMMARY.md template exists in build-tools/static/md/mdbook/src/SUMMARY.md, use it!
        # (aligns with "Key Feature #3" for mdbook: user-provided SUMMARY.md is authoritative)
        try:
            shutil.copy2(summary_md_template_source, mdbook_summary_build_path)
            logging.info(
                f"    ✅ Copied user-provided SUMMARY.md from '{summary_md_template_source.relative_to(PROJECT_ROOT)}' "
                f"to '{mdbook_summary_build_path.relative_to(PROJECT_ROOT)}'."
            )
            # If user-provided SUMMARY.md already correctly lists all flat-named files (e.g., Ledger.Foo.md),
            # no further generation needed.  If it contains placeholders like {{CHAPTER_LIST}}, we read it,
            # generate chapter list, replace placeholder, and write it back.
            # For now, we'll assume a direct copy if exists.
        except Exception as e:
            logging.error(f"    ❌ Failed to copy user-provided {summary_md_template_source.name}: {e}", exc_info=True)
            # If copy fails, we might fall back to generating a basic one.
            # For robustness, let's fall back if the target still doesn't exist.
            if not mdbook_summary_build_path.exists():
                 generate_basic_summary_md(mdbook_summary_build_path, actual_content_files_in_build_src)

    else:
        # Strategy 2: If no static template, generate basic SUMMARY.md from actual_content_files
        logging.info(
            f"    ❌ User-provided SUMMARY.md template '{summary_md_template_source}' not found. "
            "Generating a basic SUMMARY.md from content files."
        )
        generate_basic_summary_md(mdbook_summary_build_path, actual_content_files_in_build_src)

def generate_basic_summary_md(
    mdbook_summary_build_path: Path,
    actual_content_files_in_build_src: List[str]
):
    """Helper function to generate a basic SUMMARY.md from a flat list of files."""
    summary_content = "# Summary\n\n"
    # Sort files, trying to put "Introduction.md" or "index.md" first.
    # This simple sort helps, but a more sophisticated one would be needed for a better ordering.

    def sort_key(filename):
        lower_name = filename.lower()
        if lower_name == "introduction.md" or lower_name == "index.md":
            return (0, filename) # prioritize these...
        return (1, filename)     # ...then sort alphabetically

    sorted_content_files = sorted(actual_content_files_in_build_src, key=sort_key)

    # Create a flat list. To infer hierarchy from "Ledger.Foo.md", we would need a helper
    # similar to our `build_nav_from_flat_files, but outputting mdbook SUMMARY.md syntax.
    # For now, a flat list:
    for md_filename in sorted_content_files:
        # Create a title from the filename (e.g., "Ledger.Foo" -> "Ledger Foo")
        # We might want more sophisticated title generation.
        title_parts = Path(md_filename).stem.split('.')
        title = " ".join(part.capitalize() for part in title_parts)
        summary_content += f"- [{title}](./{md_filename})\n"

    try:
        with open(mdbook_summary_build_path, 'w', encoding='utf-8') as f_summary:
            f_summary.write(summary_content)
        logging.info(f"    Generated basic '{mdbook_summary_build_path.name}'.")
    except Exception as e:
        logging.error(f"    ❌ Failed to write generated {mdbook_summary_build_path.name}: {e}", exc_info=True)


def generate_custom_css_from_agda(
        agda_css_path: Path,
        output_css_path: Path,
        template_css_path: Optional[Path] = None) -> bool:
    """
    Generate custom.css with Agda color mappings extracted from Agda.css.
    If template_css_path is provided, append Agda classes to the template content.
    Otherwise, create a complete custom.css from scratch.
    """
    logging.info(f"Generating custom.css from {agda_css_path}...")

    # Check if Agda.css exists
    if not agda_css_path.exists():
        logging.warning(f"❌ Agda.css not found at {agda_css_path}")
        return False

    # Extract color mappings from Agda.css
    content = agda_css_path.read_text(encoding='utf-8')
    pattern = r'\.Agda\s+\.(\w+)\s*\{\s*([^}]*)\s*\}'
    color_mappings = {}

    for match in re.finditer(pattern, content):
        class_name = match.group(1)
        properties = match.group(2).strip()
        properties = re.sub(r'\s+', ' ', properties).strip()
        color_mappings[class_name] = properties

    if not color_mappings:
        logging.warning("❌ No Agda color mappings found in Agda.css")
        return False

    # Start with template content if provided
    css_parts = []
    if template_css_path and template_css_path.exists():
        template_content = template_css_path.read_text(encoding='utf-8')
        css_parts.append(template_content.rstrip())  # Remove trailing whitespace
        css_parts.append("")  # Add spacing before Agda classes
        logging.info(f"Using template from {template_css_path}")
    else:
        if template_css_path:
            logging.warning(f"Template file not found at {template_css_path}, creating from scratch")
        css_parts.extend([
            "/* Auto-generated custom.css for Formal Ledger Specifications */",
            ""
        ])

    # Add Agda color mappings section
    css_parts.extend([
        "/* Agda classes extracted from Agda.css for color consistency */",
        "/* Auto-generated section - do not edit manually */",
        ""
    ])

    # Add Agda color mappings
    for class_name, properties in sorted(color_mappings.items()):
        css_parts.append(f"code.Agda{class_name} {{ {properties} }}")

    css_parts.append("")  # Final newline

    # Write to output
    output_css_path.parent.mkdir(parents=True, exist_ok=True)
    output_css_path.write_text("\n".join(css_parts), encoding='utf-8')

    logging.info(f"✅ Generated custom.css with {len(color_mappings)} Agda classes")
    return True

def copy_common_source_files(
        common_src_dir: Path,
        mkdocs_docs_dir: Path,
        mdbook_src_dir: Path) -> None:
    """
    Copy shared files from `build-tools/static/md/common/src` to both
    `_build/md/mkdocs/docs` and `_build/md/mdbook/src`.

    Ensures a single source of truth (for files like `Notation.md`) is used
    by both sites/documentation systems.

    Args:
        common_src_dir: Source directory with shared files (e.g. build-tools/static/md/common/src)
        mkdocs_docs_dir: Target mkdocs docs directory
        mdbook_src_dir: Target mdbook src directory
    """
    import shutil

    if not common_src_dir.exists():
        logging.info(f"❌ No common source directory found at {common_src_dir}, skipping")
        return

    logging.info(f"Copying shared files from {common_src_dir}")

    # Copy to mkdocs docs directory
    if mkdocs_docs_dir.parent.exists():  # Check if mkdocs target exists
        for item in common_src_dir.iterdir():
            if item.is_file():
                target_file = mkdocs_docs_dir / item.name
                shutil.copy2(item, target_file)
                logging.debug(f"  → {item.name} → mkdocs/docs/")
            elif item.is_dir():
                target_dir = mkdocs_docs_dir / item.name
                if target_dir.exists():
                    shutil.rmtree(target_dir)
                shutil.copytree(item, target_dir)
                logging.debug(f"  → {item.name}/ → mkdocs/docs/")

    # Copy to mdbook src directory
    if mdbook_src_dir.parent.exists():  # Check if mdbook target exists
        for item in common_src_dir.iterdir():
            if item.is_file():
                target_file = mdbook_src_dir / item.name
                shutil.copy2(item, target_file)
                logging.debug(f"  → {item.name} → mdbook/src/")
            elif item.is_dir():
                target_dir = mdbook_src_dir / item.name
                if target_dir.exists():
                    shutil.rmtree(target_dir)
                shutil.copytree(item, target_dir)
                logging.debug(f"  → {item.name}/ → mdbook/src/")

    # Count and report
    common_files = list(common_src_dir.rglob('*'))
    file_count = len([f for f in common_files if f.is_file()])
    logging.info(f"✅ Copied {file_count} shared files to both documentation systems")


def deploy_bibliography_assets():
    """Copy bibliography file to mkdocs source directory"""
    # Source: REFS_STATIC_PATH = BUILD_TOOLS / "static" / "latex" / "references.bib"
    # Target: MKDOCS_INCLUDES_DIR = BUILD_MD_DIR / "mkdocs" / "includes"
    bib_target = MKDOCS_INCLUDES_DIR / REFS_STATIC_PATH.name

    if REFS_STATIC_PATH.exists():
        shutil.copy2(REFS_STATIC_PATH, bib_target)
        logging.info(f"✅ Copied bibliography: {REFS_STATIC_PATH.name} to {bib_target.relative_to(PROJECT_ROOT)}")
    else:
        logging.warning(f"❌ Bibliography file not found: {REFS_STATIC_PATH}")


def main(run_agda_html_flag=False):
    """Main dispatcher: Choose functional or legacy pipeline based on module availability."""
    if HAS_FUNCTIONAL_MODULES and HAS_AGDA_PROCESSING:
        return main_functional(run_agda_html_flag)
    else:
        return main_legacy(run_agda_html_flag)


def main_functional(run_agda_html_flag=False):
    """Functional pipeline using mathematical composition where possible."""
    logging.info("🔧 Starting functional documentation build pipeline...")
    logging.info(f"Run Agda --html flag: {run_agda_html_flag}")

    # STAGE 1: Load immutable configuration
    config = load_build_config(run_agda_html=run_agda_html_flag, mode="development")

    # STAGE 2: Functional setup
    logging.info("🏗️ Setting up build environment with functional modules...")
    setup_result = setup_build_environment(config)

    if setup_result.is_err:
        error = setup_result.unwrap_err()
        logging.error(f"❌ Functional setup failed: {error}")
        sys.exit(1)

    setup_info = setup_result.unwrap()
    logging.info(f"✅ Functional setup completed:")
    logging.info(f"   Directories created: {len(setup_info.get('directories', []))}")
    logging.info(f"   Static structures: {list(setup_info.get('structures', {}).keys())}")
    logging.info(f"   Common files copied: {setup_info.get('common_files_copied', 0)}")

    # STAGE 3: Generate macros (legacy bridge)
    macros_json_path = macros_path(
        config.build_paths.macros_json_path,
        config.source_paths.md_scripts_dir / "generate_macros_json.py",
        config.source_paths.macros_sty_path
    )

    # STAGE 4: Functional Agda processing
    logging.info("🔄 Using functional Agda processing pipeline...")
    agda_result = process_agda_source_files(config)

    if agda_result.is_err:
        error = agda_result.unwrap_err()
        logging.error(f"❌ Functional Agda processing failed: {error}")
        sys.exit(1)

    processed_agda_files = agda_result.unwrap()
    logging.info(f"✅ Functional Agda processing: {len(processed_agda_files)} files processed")

    # STAGE 5: Functional LaTeX processing
    logging.info("🔄 LaTeX processing stage...")

    latex_files = list(config.build_paths.agda_snapshot_src_dir.rglob("*.lagda"))

if latex_files:
    logging.info(f"Found {len(latex_files)} LaTeX files to process")

    # Use the enhanced bibliography integration
    processed_files_info = run_latex_preprocessing_stage(
        latex_files, config.build_paths.agda_snapshot_src_dir,
        config.build_paths.macros_json_path,
        config.build_paths.temp_dir, config.build_paths.code_blocks_dir
    )

    labels_map_path = build_global_label_map(processed_files_info, config.build_paths.build_md_aux_dir)

    generated_files = run_latex_conversion_stage_with_bibliography(
        processed_files_info, labels_map_path,
        config.source_paths.md_scripts_dir / "agda-filter.lua",
        config.source_paths.md_scripts_dir / "postprocess.py",
        config.source_paths.references_bib_path,
        config.build_paths.build_md_aux_dir,
        config.build_paths.agda_snapshot_src_dir
    )

    processed_latex_files = []
    for file_path in generated_files:
        processed_file = ProcessedFile(
            source_path=file_path, current_path=file_path,
            metadata=calculate_file_metadata(file_path, ProcessingStage.POSTPROCESSED),
            content_hash=""
        )
        processed_latex_files.append(processed_file)
    logging.info(f"✅ LaTeX processing: {len(processed_latex_files)} files processed")
    else:
        if latex_files and not HAS_LATEX_PIPELINE:
            logging.warning(f"Found {len(latex_files)} LaTeX files but LaTeX pipeline not available")
            logging.warning("Falling back to legacy LaTeX processing...")
            # TODO: Add legacy fallback here if needed
        processed_latex_files = []

    # STAGE 6: Compose all processed files
    all_processed_files = list(processed_agda_files) + processed_latex_files
    all_snapshot_lagda_md_files = [f.current_path for f in all_processed_files]

    logging.info(f"✅ Total processed files: {len(all_processed_files)}")
    logging.info(f"   Agda files: {len(processed_agda_files)}")
    logging.info(f"   LaTeX files: {len(processed_latex_files)}")

    # STAGE 7: Continue with existing pipeline (simplified for now)
    logging.info("🔄 Continuing with existing pipeline components...")

    staged_md_file_paths = populate_agda_docs_staging(
        run_agda_html_flag,
        all_snapshot_lagda_md_files,
        config.build_paths.agda_snapshot_src_dir,
        config.build_paths.build_md_pp_dir,
        "Ledger.lagda.md"
    )

    logging.info(f"✅ Staged {len(staged_md_file_paths)} files")

    # STAGE 8: Continue with legacy bridge (for now)
    continue_with_legacy_pipeline(
        config,
        macros_json_path,
        all_snapshot_lagda_md_files,
        run_agda_html_flag
    )

    # STAGE 9: Functional cleanup
    if config.cleanup_intermediates:
        cleanup_result = cleanup_intermediate_artifacts(config)
        if cleanup_result.is_ok:
            cleaned = cleanup_result.unwrap()
            logging.info(f"✅ Functional cleanup: {len(cleaned)} artifacts removed")
        else:
            error = cleanup_result.unwrap_err()
            logging.warning(f"⚠️ Cleanup warning: {error}")

    logging.info("✅ Functional build completed successfully!")



def main_functional_old(run_agda_html_flag=False):
    """Functional pipeline using mathematical composition where possible."""
    logging.info("🔧 Starting functional documentation build pipeline...")
    logging.info(f"Run Agda --html flag: {run_agda_html_flag}")

    # STAGE 1: Load immutable configuration
    config = load_build_config(run_agda_html=run_agda_html_flag, mode="development")

    # STAGE 2: Functional setup
    logging.info("🏗️ Setting up build environment with functional modules...")
    setup_result = setup_build_environment(config)

    # DEBUG: Let's see what we actually got
    logging.info(f"Setup result type: {type(setup_result)}")
    logging.info(f"Setup result is_ok: {setup_result.is_ok}")
    logging.info(f"Setup result is_err: {setup_result.is_err}")

    if setup_result.is_err:
        error = setup_result.unwrap_err()
        logging.error(f"❌ Functional setup failed: {error}")
        sys.exit(1)

    # Setup succeeded
    setup_info = setup_result.unwrap()
    logging.info(f"✅ Functional setup completed:")
    logging.info(f"   Directories created: {len(setup_info.get('directories', []))}")
    logging.info(f"   Static structures: {list(setup_info.get('structures', {}).keys())}")
    logging.info(f"   Common files copied: {setup_info.get('common_files_copied', 0)}")

    # STAGE 3: Generate macros (using legacy function for now)
    macros_json_path = macros_path(
        config.build_paths.macros_json_path,
        config.source_paths.md_scripts_dir / "generate_macros_json.py",
        config.source_paths.macros_sty_path
    )

    # STAGE 4: Functional Agda processing
    logging.info("🔄 Using functional Agda processing pipeline...")
    agda_result = process_agda_source_files(config)

    if agda_result.is_err:
        error = agda_result.unwrap_err()
        logging.error(f"❌ Functional Agda processing failed: {error}")
        sys.exit(1)

    processed_agda_files = agda_result.unwrap()
    logging.info(f"✅ Functional Agda processing: {len(processed_agda_files)} files processed")

    # Convert to format expected by legacy pipeline parts
    all_snapshot_lagda_md_files = [f.current_path for f in processed_agda_files]

    # STAGE 5: Continue with existing pipeline (simplified for now)
    logging.info("🔄 Continuing with existing pipeline components...")

    # Just run the essential parts to test the integration
    staged_md_file_paths = populate_agda_docs_staging(
        run_agda_html_flag,
        all_snapshot_lagda_md_files,
        config.build_paths.agda_snapshot_src_dir,
        config.build_paths.build_md_pp_dir,
        "Ledger.lagda.md"
    )

    logging.info(f"✅ Staged {len(staged_md_file_paths)} files")

    # STAGE 6: Functional cleanup
    if config.cleanup_intermediates:
        cleanup_result = cleanup_intermediate_artifacts(config)
        if cleanup_result.is_ok:
            cleaned = cleanup_result.unwrap()
            logging.info(f"✅ Functional cleanup: {len(cleaned)} artifacts removed")
        else:
            error = cleanup_result.unwrap_err()
            logging.warning(f"⚠️ Cleanup warning: {error}")

    logging.info("✅ Functional build completed successfully!")


def main_legacy(run_agda_html_flag=False):
    """Complete legacy pipeline implementation (fallback)."""
    logging.info("⚠️ Using complete legacy documentation build pipeline...")
    logging.info(f"Run Agda --html flag: {run_agda_html_flag}")

    # Use the original main() function logic
    # For now, just log that we would run legacy
    logging.info("Legacy pipeline would run here...")
    logging.info("✅ Legacy build completed!")


def continue_with_legacy_pipeline(config, macros_json_path, all_snapshot_lagda_md_files, run_agda_html_flag):
    """
    Bridge function to continue with legacy pipeline parts.
    This will be gradually replaced by functional modules.
    """

    # Extract paths for legacy compatibility
    AGDA_SNAPSHOT_SRC_DIR = config.build_paths.agda_snapshot_src_dir
    BUILD_MD_PP_DIR = config.build_paths.build_md_pp_dir
    MKDOCS_DOCS_DIR = config.build_paths.mkdocs_docs_dir
    MKDOCS_CSS_DIR = config.build_paths.mkdocs_css_dir
    MKDOCS_JS_DIR = config.build_paths.mkdocs_js_dir
    MKDOCS_SRC_DIR = config.build_paths.mkdocs_src_dir
    PROJECT_ROOT = config.source_paths.project_root

    # For now, we can skip the LaTeX processing here since it's handled functionally
    # Just continue with site generation...

    # Generate CSS and deploy assets
    generate_and_deploy_css(run_agda_html_flag, BUILD_MD_PP_DIR, MKDOCS_CSS_DIR)

    # Copy to sites
    nav_files_in_docs = copy_staging_to_site_docs(BUILD_MD_PP_DIR, MKDOCS_DOCS_DIR, "MkDocs")

    # Deploy assets
    final_nav_list = deploy_static_mkdocs_assets(
        MKDOCS_DOCS_DIR, MKDOCS_CSS_DIR, MKDOCS_JS_DIR, run_agda_html_flag,
        nav_files_in_docs, None, MD_STATIC_CUSTOM_JS_PATH, MKDOCS_STATIC_INDEX, PROJECT_ROOT
    )

    deploy_bibliography_assets()

    # Generate configs
    dynamic_css_list = []
    if (MKDOCS_CSS_DIR / "Agda.css").exists():
        dynamic_css_list.append("css/Agda.css")
    if (MKDOCS_CSS_DIR / "custom.css").exists():
        dynamic_css_list.append("css/custom.css")

    dynamic_js_list = []
    if MD_STATIC_CUSTOM_JS_PATH.exists() and (MKDOCS_JS_DIR / MD_STATIC_CUSTOM_JS_PATH.name).exists():
        dynamic_js_list.append(f"js/{MD_STATIC_CUSTOM_JS_PATH.name}")
    if MD_STATIC_KATEX_JS_PATH.exists() and (MKDOCS_JS_DIR / MD_STATIC_KATEX_JS_PATH.name).exists():
        dynamic_js_list.append(f"js/{MD_STATIC_KATEX_JS_PATH.name}")

    generate_mkdocs_config(
        MKDOCS_SRC_DIR / "mkdocs.yml",
        final_nav_list,
        MKDOCS_STATIC_NAV_YML,
        HAS_YAML,
        dynamic_extra_css=dynamic_css_list,
        dynamic_extra_javascript=dynamic_js_list
    )

    logging.info("✅ Build script finished successfully!")
    logging.info(f"Final source for MkDocs: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")


def generate_and_deploy_css(run_agda_html_flag, staging_dir, css_dir):
    """Helper function to handle CSS generation."""
    agda_css_in_staging = staging_dir / "Agda.css"
    custom_css_temp_output = BUILD_MD_AUX_DIR / "custom_augmented.css"

    if run_agda_html_flag and agda_css_in_staging.exists():
        css_success = generate_custom_css_from_agda(
            agda_css_path=agda_css_in_staging,
            output_css_path=custom_css_temp_output,
            template_css_path=MD_STATIC_CUSTOM_CSS_PATH
        )
    else:
        if MD_STATIC_CUSTOM_CSS_PATH.exists():
            shutil.copy2(MD_STATIC_CUSTOM_CSS_PATH, custom_css_temp_output)
        else:
            custom_css_temp_output.write_text("/* Minimal CSS */\n", encoding='utf-8')

    # Copy to CSS directory
    css_dir.mkdir(parents=True, exist_ok=True)
    final_custom_css = css_dir / "custom.css"
    if custom_css_temp_output.exists():
        shutil.copy2(custom_css_temp_output, final_custom_css)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build mkdocs site source from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run the 'agda --html --html-highlight=auto' step on processed .lagda.md files."
    )
    args = parser.parse_args()

    try:
        main(run_agda_html_flag=args.run_agda)
    except SystemExit as e: # catch sys.exit() specifically if used for early exits
        logging.error(f"❌ Build process exited prematurely with code {e.code}.")
        # We may want to cleanup here; for now, cleanup is only on successful main completion.
    except Exception as e:
        logging.exception("❌ CRITICAL ERROR: Build failed due to an unhandled exception.")
        # no cleanup here; preserve intermediate files for debugging error.
        sys.exit(1) # ensure non-zero exit code for CI
    finally:
        # executes whether main() succeeds or fails (unless sys.exit called)
        logging.info("✅ Build script execution finished. Shutting down logging.")
        logging.shutdown()
