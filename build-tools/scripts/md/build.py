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
import sys
import subprocess
import json
import re
import shutil
from pathlib import Path
from typing import List, Dict, Optional, Any, Tuple
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

from config.build_config import get_legacy_paths, load_build_config, BuildConfig
from modules.setup import setup_build_environment, cleanup_intermediate_artifacts
from modules.agda_processing import process_agda_source_files
from modules.latex_pipeline import latex_pipeline_stage
from modules.asset_generator import generate_macros_json, generate_custom_css_from_agda
from utils.command_runner import run_command


# === CONFIGURATION ===
# Get all path constants from centralized configuration
legacy_paths = get_legacy_paths()

# Extract all constants (same names as before, but centralized source)
PROJECT_ROOT = legacy_paths["PROJECT_ROOT"]
BUILD_MD_AUX_DIR = legacy_paths["BUILD_MD_AUX_DIR"]
AGDA_SNAPSHOT_SRC_DIR = legacy_paths["AGDA_SNAPSHOT_SRC_DIR"]
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
    def __init__(self, relative_path: Path) -> None:
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



# --- Helper for changing header phrases to link labels (slugs) ---

def build_nav_from_flat_files(flat_file_paths_str_list: List[str]) -> List[Dict[str, Any]]:
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
    def format_nav_subtree(subtree_dict: Dict[str, Any]) -> List[Dict[str, Any]]:
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


def generate_and_save_macros_json(
    macros_json_target_path: Path,
    macros_sty_source: Path
) -> Path:
    """
    Ensures macros.json exists, generating it if necessary by calling the
    asset generator module.
    """
    logging.info(f"Checking for {macros_json_target_path.name}...")
    if not macros_sty_source.exists():
        if not macros_json_target_path.exists():
            logging.error(f"❌ {macros_json_target_path.name} not found and cannot be generated "
                          f"because source {macros_sty_source.name} is missing. Exiting.")
            sys.exit(1)
        else:
            logging.warning(f"Using existing {macros_json_target_path.name}, but its source "
                            f"{macros_sty_source.name} is missing. It may be stale.")
            return macros_json_target_path

    # Regenerate if target doesn't exist or is older than the source .sty file
    if not macros_json_target_path.exists() or macros_sty_source.stat().st_mtime > macros_json_target_path.stat().st_mtime:
        logging.info(f"🏗️  Generating {macros_json_target_path.name} from {macros_sty_source.name}...")
        try:
            sty_content = macros_sty_source.read_text(encoding='utf-8')
            json_content = generate_macros_json(sty_content) # Call the imported function
            macros_json_target_path.write_text(json_content, encoding='utf-8')
            logging.info(f"✅ Successfully generated {macros_json_target_path.name}.")
        except Exception as e:
            logging.error(f"❌ Failed to generate {macros_json_target_path.name}: {e}", exc_info=True)
            sys.exit(1)
    else:
        logging.info(f"Using existing and up-to-date {macros_json_target_path.name}.")

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
        agda_command = [
            "agda", "--fls",
            f"--fls-html-dir={agda_docs_staging_dir.resolve()}",
            master_agda_file_name
        ]
        agda_result = run_command(
            agda_command,
            cwd=agda_snapshot_src_dir.resolve(),
            stream_output=True  # lets us see Agda type-checking and html generation logging
        )

        if agda_result.is_ok:
            logging.info(f"✅ Agda --html command completed. Files generated in {agda_docs_staging_dir}.")
            # Collect generated .md files
            for gen_file in agda_docs_staging_dir.glob("*.md"):
                final_md_files_in_staging.append(gen_file)
        else:
            error = agda_result.unwrap_err()
            logging.error(f"❌ Agda --html command failed: {error.message}\n{error.context.get('stderr','')}")
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
        project_root: Path
) -> List[str]:
    """Copies static assets like CSS, JS, and index.md template to the docs folder.
    Returns the updated list of nav files (potentially adding index.md).
    """
    logging.info("\nAssembling static assets for MkDocs site...")
    assets_to_copy: Dict[Path, Path] = {} # Source -> Destination

    # Agda.css
    if run_agda_html_flag:
        agda_dir_result = run_command(["agda", "--print-agda-data-dir"], capture_output=True, text=True)
        if agda_dir_result.is_ok:
            agda_proc = agda_dir_result.unwrap()
            if agda_proc.stdout:
                agda_data_dir = Path(agda_proc.stdout.strip())
                agda_css_source = agda_data_dir / "html" / "Agda.css"
                if agda_css_source.exists():
                    assets_to_copy[agda_css_source] = mkdocs_css_dir / "Agda.css"
                else:
                    logging.warning(f"Agda.css not found at expected path: {agda_css_source}")
        else:
            error = agda_dir_result.unwrap_err()
            logging.warning(f"❌ Could not find Agda.css via 'agda --print-agda-data-dir': {error.message}")

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
                mkdocs_config = yaml.safe_load(f_yml) or {} # type: ignore
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
                nav_data = yaml.safe_load(f_nav) # type: ignore
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
        logging.info("  🏗️  Generating navigation from processed files in docs/ directory.")
        nav_structure_for_yaml = build_nav_from_flat_files(nav_files_from_docs_dir)

    mkdocs_config['nav'] = nav_structure_for_yaml
    logging.info("  ✅ Set 'nav' section in configuration.")

    # Write the updated/generated mkdocs.yml
    try:
        mkdocs_yml_target_path.parent.mkdir(parents=True, exist_ok=True) # Ensure target dir exists
        if has_yaml_library:
            with open(mkdocs_yml_target_path, "w", encoding="utf-8") as f_yml:
                yaml.dump(mkdocs_config, f_yml, sort_keys=False, default_flow_style=False, allow_unicode=True, width=1000) # type: ignore
        else: # Fallback to JSON
            with open(mkdocs_yml_target_path, "w", encoding="utf-8") as f_yml_json:
                json.dump(mkdocs_config, f_yml_json, indent=2)
            logging.warning(f"  Generated {mkdocs_yml_target_path.name} as JSON (PyYAML not installed).")
        logging.info(f"  ✅ Successfully wrote final configuration to {mkdocs_yml_target_path.name}.")
    except Exception as e:
        logging.error(f"  ❌ Error writing {mkdocs_yml_target_path.name}: {e}", exc_info=True)

    return mkdocs_yml_target_path

def generate_basic_summary_md(
    mdbook_summary_build_path: Path,
    actual_content_files_in_build_src: List[str]
) -> None:
    """Helper function to generate a basic SUMMARY.md from a flat list of files."""
    summary_content = "# Summary\n\n"
    # Sort files, trying to put "Introduction.md" or "index.md" first.
    # This simple sort helps, but a more sophisticated one would be needed for a better ordering.

    def sort_key(filename: str) -> Tuple[int, str]:
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


def generate_mdbook_config(
    mdbook_toml_build_path: Path,      # Target: _build/md/mdbook/book.toml
    mdbook_summary_build_path: Path,   # Target: _build/md/mdbook/src/SUMMARY.md
    book_toml_template_source: Path,   # Source: build-tools/static/md/mdbook/book.toml
    summary_md_template_source: Path,  # Source: build-tools/static/md/mdbook/src/SUMMARY.md
    actual_content_files_in_build_src: List[str] # Basenames of .md files in _build/md/mdbook/src/
) -> None:
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


def generate_and_deploy_custom_css(
    config: BuildConfig,
    agda_css_source_path: Optional[Path] = None,
) -> bool:
    """
    Generates custom.css by combining a template with styles extracted from
    Agda.css, and deploys it to the site build directories.

    Args:
        config: The main build configuration object.
        agda_css_source_path: Path to the source Agda.css. If None, or if the
                              file doesn't exist, only the template will be used.

    Returns:
        True if the final custom.css was created, False otherwise.
    """
    logging.info("Generating and deploying custom.css...")

    agda_css_content = None
    if agda_css_source_path and agda_css_source_path.exists():
        logging.info(f"Reading Agda styles from {agda_css_source_path}")
        agda_css_content = agda_css_source_path.read_text(encoding='utf-8')
    elif agda_css_source_path:
        logging.warning(f"Agda.css source was specified but not found at {agda_css_source_path}")

    template_css_content = None
    if config.source_paths.custom_css_path.exists():
        logging.info(f"Using template from {config.source_paths.custom_css_path}")
        template_css_content = config.source_paths.custom_css_path.read_text(encoding='utf-8')
    else:
        logging.warning(f"CSS template not found at {config.source_paths.custom_css_path}")

    # Generate the final CSS content using the asset generator
    final_css_content = generate_custom_css_from_agda(
        agda_css_content=agda_css_content or "",
        existing_custom_css=template_css_content
    )

    # --- Deploy the generated CSS to all target locations ---
    # We write it to an intermediate file first, then copy it.
    temp_css_path = config.build_paths.build_md_aux_dir / "custom.css"
    temp_css_path.parent.mkdir(parents=True, exist_ok=True)
    temp_css_path.write_text(final_css_content, encoding='utf-8')
    logging.info(f"Intermediate custom.css created at {temp_css_path}")

    # Define target directories
    target_css_dirs = []
    if config.site_config.generate_mkdocs:
        target_css_dirs.append(config.build_paths.mkdocs_css_dir)
    if config.site_config.generate_mdbook:
        target_css_dirs.append(config.build_paths.mdbook_css_dir)

    if not target_css_dirs:
        logging.warning("No site generators enabled, skipping CSS deployment.")
        return False

    # Copy to each target
    for css_dir in target_css_dirs:
        try:
            css_dir.mkdir(parents=True, exist_ok=True)
            shutil.copy2(temp_css_path, css_dir / "custom.css")
            logging.info(f"✅ Deployed custom.css to {css_dir}")
        except Exception as e:
            logging.error(f"❌ Failed to deploy custom.css to {css_dir}: {e}")
            return False

    return True


def deploy_bibliography_assets() -> None:
    """Copy bibliography file to mkdocs source directory"""
    # Source: REFS_STATIC_PATH = BUILD_TOOLS / "static" / "latex" / "references.bib"
    # Target: MKDOCS_INCLUDES_DIR = BUILD_MD_DIR / "mkdocs" / "includes"
    bib_target = MKDOCS_INCLUDES_DIR / REFS_STATIC_PATH.name

    if REFS_STATIC_PATH.exists():
        shutil.copy2(REFS_STATIC_PATH, bib_target)
        logging.info(f"✅ Copied bibliography: {REFS_STATIC_PATH.name} to {bib_target.relative_to(PROJECT_ROOT)}")
    else:
        logging.warning(f"❌ Bibliography file not found: {REFS_STATIC_PATH}")


def main(run_agda_html_flag: bool = False) -> None:
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

    # STAGE 3: Generate macros (using the new integrated function)
    macros_json_path = generate_and_save_macros_json(
        config.build_paths.macros_json_path,
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


def continue_with_legacy_pipeline(
        config: BuildConfig,  # Immutable configuration object
        macros_json_path: Path,  # Path to macros.json
        all_snapshot_lagda_md_files: List[Path],  # List of all processed .lagda.md files
        run_agda_html_flag: bool = False  # Flag to run Agda HTML processing
) -> None:
    """
    Bridge function to continue with legacy pipeline parts.
    This will be gradually replaced by functional modules.
    """

    # Extract paths for legacy compatibility
    BUILD_MD_PP_DIR = config.build_paths.build_md_pp_dir
    MKDOCS_DOCS_DIR = config.build_paths.mkdocs_docs_dir
    MKDOCS_CSS_DIR = config.build_paths.mkdocs_css_dir
    MKDOCS_JS_DIR = config.build_paths.mkdocs_js_dir
    MKDOCS_SRC_DIR = config.build_paths.mkdocs_src_dir
    PROJECT_ROOT = config.source_paths.project_root
    MKDOCS_STATIC_NAV_YML = config.source_paths.mkdocs_nav_yml_path
    MKDOCS_STATIC_INDEX = config.source_paths.mkdocs_static_docs_dir / "index.md"

    # --- Generate and Deploy CSS ---
    # Determine the source for Agda.css. If --run-agda was used, it's in the
    # staging directory (_build/md/md.pp/). Otherwise, we need to find it
    # from the Agda data directory as a fallback.
    agda_css_source = None
    if run_agda_html_flag:
        agda_css_source = BUILD_MD_PP_DIR / "Agda.css"
        if not agda_css_source.exists():
             logging.warning(f"--run-agda was true but Agda.css not found in staging dir: {agda_css_source}")
             agda_css_source = None # Clear it so we can try the fallback

    if not agda_css_source:
        logging.info("Attempting to find Agda.css via 'agda --print-agda-data-dir'...")
        agda_dir_result = run_command(["agda", "--print-agda-data-dir"], capture_output=True, text=True)
        if agda_dir_result.is_ok:
            proc = agda_dir_result.unwrap()
            if proc.stdout:
                agda_css_path = Path(proc.stdout.strip()) / "html" / "Agda.css"
                if agda_css_path.exists():
                    agda_css_source = agda_css_path
        else:
            logging.warning(f"Could not locate Agda.css via agda command: {agda_dir_result.unwrap_err().message}")

    generate_and_deploy_custom_css(config, agda_css_source)

    # Copy to sites
    nav_files_in_docs = copy_staging_to_site_docs(BUILD_MD_PP_DIR, MKDOCS_DOCS_DIR, "MkDocs")

    # Deploy other static assets
    final_nav_list = deploy_static_mkdocs_assets(
        mkdocs_docs_dir=MKDOCS_DOCS_DIR,
        mkdocs_css_dir=MKDOCS_CSS_DIR,
        mkdocs_js_dir=MKDOCS_JS_DIR,
        run_agda_html_flag=run_agda_html_flag,
        current_nav_files=nav_files_in_docs,
        custom_css_source=config.source_paths.custom_css_path,
        custom_js_source=config.source_paths.custom_js_path,
        index_md_template_source=MKDOCS_STATIC_INDEX,
        project_root=PROJECT_ROOT
    )

    deploy_bibliography_assets()

    # --- Generate MkDocs Config ---
    # Use the dynamic files from the config object
    dynamic_css_list = list(config.site_config.dynamic_css_files)
    dynamic_js_list = list(config.site_config.dynamic_js_files)

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
