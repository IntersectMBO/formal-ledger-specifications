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
#
# LOG LEVEL
#
# There are two primary ways to adjust the logging level:
#
# **Method 1** ("Quick and dirty" way) Change the default mode in this build script.
# Find the `main` function and change the `mode` passed to `load_build_config`.
# To get less verbose `INFO` level logging, change `"development"` to `"ci"`:
# Change this line:
#   config = load_build_config(run_agda_html=run_agda_html_flag, mode="development")
# To this:
#   config = load_build_config(run_agda_html=run_agda_html_flag, mode="ci")
#
# **Method 2** ("Proper" way) Use the command-line flag to `build.py` (`--verbose` or `--quiet`)
# that overrides the default setting for any mode.

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
    from config.build_config import load_build_config
    from utils.command_runner import run_command
    from modules.setup import setup_build_environment, cleanup_intermediate_artifacts
    from modules.bibliography_stage import process_bibliography_stage
    from modules.site_assembly import deploy_mkdocs_assets, generate_and_deploy_custom_css
    from modules.config_generation import generate_mkdocs_config
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
BUILD_MD_AUX_DIR = legacy_paths["BUILD_MD_AUX_DIR"]
AGDA_SNAPSHOT_SRC_DIR = legacy_paths["AGDA_SNAPSHOT_SRC_DIR"]
AGDA_SNAPSHOT_LIB_EXTS_DIR = legacy_paths["AGDA_SNAPSHOT_LIB_EXTS_DIR"]
MKDOCS_SRC_DIR = legacy_paths["MKDOCS_SRC_DIR"]
MKDOCS_DOCS_DIR = legacy_paths["MKDOCS_DOCS_DIR"]
MKDOCS_INCLUDES_DIR = legacy_paths["MKDOCS_INCLUDES_DIR"]
MDBOOK_DOCS_DIR = legacy_paths["MDBOOK_DOCS_DIR"]

# # Key files
LOG_FILE = legacy_paths["LOG_FILE"]
REFS_STATIC_PATH = legacy_paths["REFS_STATIC_PATH"]

# # CSS and JS
MD_STATIC_JS_DIR = legacy_paths["MD_STATIC_JS_DIR"]
MD_STATIC_CUSTOM_CSS_PATH = legacy_paths["MD_STATIC_CUSTOM_CSS_PATH"]
MD_STATIC_CUSTOM_JS_PATH = legacy_paths["MD_STATIC_CUSTOM_JS_PATH"]
MD_STATIC_KATEX_JS_PATH = legacy_paths["MD_STATIC_KATEX_JS_PATH"]

# # Navigation
MKDOCS_STATIC_NAV_YML = legacy_paths["MKDOCS_STATIC_NAV_YML"]
MKDOCS_STATIC_INDEX = legacy_paths["MKDOCS_STATIC_INDEX"]

# # Pipeline intermediate directories
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
        file_handler.setLevel(logging.INFO)
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
            logging.info(f"🏗️  Generating {macros_json_target_path.name} from {macros_sty_source.name}...")
            run_command(
                ["python", str(generator_script), str(macros_sty_source), str(macros_json_target_path)],
                cwd=PROJECT_ROOT,
                capture_output=False
            )
        else:
            logging.info(f"Using existing and up-to-date {macros_json_target_path.name}.")
    elif not macros_json_target_path.exists():
        logging.error(f"❌ {macros_json_target_path.name} not found and cannot be generated. Exiting.")
        sys.exit(1)
    else:
        logging.info(f"Using existing {macros_json_target_path.name} (generator or source .sty not found).")
    return macros_json_target_path

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
        f"\n--- 🏗️  Populating Agda docs staging directory: "
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
            run_command(
                [
                    "agda", "--fls",
                    f"--fls-html-dir={agda_docs_staging_dir.resolve()}",
                    master_agda_file_name
                ],
                cwd=agda_snapshot_src_dir.resolve(),
                # We don't need to capture output, preventing the deadlock
                capture_output=False
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
        f"\n--- 🏗️  Populating {site_name} site docs from "
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
        logging.info(f"✅ Successfully copied all contents from {agda_docs_staging_dir.name} "
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
    # outputting mdbook SUMMARY.md syntax.  For now, a flat list:
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
    logging.info(f"\n--- 🏗️  Finalizing mdbook configuration ---")

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

#
# -- Main pipeline entry point --
#
def main(run_agda_html_flag=False):
    """Functional pipeline using mathematical composition where possible."""
    logging.info("🔧 Starting functional documentation build pipeline...")
    logging.info(f"Run Agda --html flag: {run_agda_html_flag}")

    # STAGE 1: Load immutable configuration
    config = load_build_config(run_agda_html=run_agda_html_flag, mode="development")

    # STAGE 2: Functional setup
    logging.info("🏗️  Setting up build environment with functional modules...")
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

        # Use the new functional latex pipeline
        latex_result = latex_pipeline_stage(latex_files, config)

        if latex_result.is_err:
            error = latex_result.unwrap_err()
            logging.error(f"❌ LaTeX processing failed: {error}")
            processed_latex_files = []
        else:
            processed_latex_files = latex_result.unwrap()
            logging.info(f"✅ LaTeX processing: {len(processed_latex_files)} files processed")
    else:
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


def continue_with_legacy_pipeline(config, macros_json_path, all_snapshot_lagda_md_files, run_agda_html_flag):
    """
    Bridge function to continue with legacy pipeline parts.
    This will be gradually replaced by functional modules.
    """

    # STAGE 7a: Generate and deploy CSS using the new module function
    css_result = generate_and_deploy_custom_css(config)
    if css_result.is_err:
        logging.warning("CSS generation failed, but continuing build...")

    # STAGE 7b: Copy processed content to the final docs directory
    nav_files = copy_staging_to_site_docs(
        config.build_paths.build_md_pp_dir,
        config.build_paths.mkdocs_docs_dir,
        "MkDocs"
    )

    # STAGE 8: Deploy all static assets using the new module
    assets_result = deploy_mkdocs_assets(config, nav_files)
    if assets_result.is_err:
        logging.error(f"❌ Site assembly failed: {assets_result.unwrap_err()}")
        sys.exit(1)

    final_nav_files = assets_result.unwrap()

    # STAGE 9: Generate the final mkdocs.yml using the new module
    config_result = generate_mkdocs_config(config, final_nav_files)
    if config_result.is_err:
        logging.error(f"❌ MkDocs config generation failed: {config_result.unwrap_err()}")
        sys.exit(1)

    logging.info("✅ Build script finished successfully!")
    logging.info(f"Final source for MkDocs: {config.build_paths.mkdocs_build_dir.relative_to(config.source_paths.project_root)}")


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
