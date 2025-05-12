# build.py
#
# :PURPOSE:
# Translate a collection of latex-based literate (and illiterate) Agda files to
# a collection of markdown-based literate Agda and build mkdocs site to serve
# the resulting collection on a website.
#
# :PROCESS:
# 1.  Generate macro JSON from .sty file.
# 2.  Create snapshot of the Agda 'src/' directory.
# 3.  Convert each `.agda` file to a literate `.lagda.md` file.
# 4.  For each `.lagda` file found in 'src/':
#     a.  Run preprocess -> pandoc+lua -> postprocess pipeline.
#     b.  Replace original `.lagda` file in the snapshot with the generated `.lagda.md`.
# 5.  Assemble a basic mkdocs site.
# 6.  (Optional) If `--run-agda` flag passed, then run `agda --html` on
#     each `.lagda.md` file to produce `.md` files for mkdocs site.
#
# :Notes/Changes/Updates:
# 1.  `unique_literate_md_files_in_snapshot` is now the single source of
#     truth for files to be processed by Agda or copied if Agda is skipped.
#     It's built from `.lagda.md` files found in the snapshot (either converted
#     from `.agda` or resulting from our LaTeX `.lagda` pipeline).
# 2.  Flat Filename Derivation: The logic to derive `module_name_flat`
#     (e.g., "Ledger.Transaction") from the snapshot path (e.g., "Ledger/Transaction.lagda.md") is revised.
# 3.  Agda Output: `agda_actual_output_filename` is correctly set to `module_name_flat + ".md"`,
#     matching Agda behavior.
# 4.  Target Paths: `final_mkdocs_flat_filename` and `mkdocs_target_full_path` use this flat
#     name directly under `MKDOCS_DOCS_DIR`.
# 5.  Link Rewriting Call: `rewrite_internal_link_extensions` is called to fix `.html` to `.md` in `hrefs`.
# 6.  Fallback Logic: If Agda fails or doesn't produce the expected output file, the original
#     `.lagda.md` from the snapshot is copied and renamed to the target flat `.md` filename.
# 7.  `else` block (no `run_agda_html`): This part is also updated to use the flat naming convention
#     when copying files from the snapshot.
# 8.  `final_md_files_for_mkdocs_nav`: now consistently collects the flat filenames
#     (e.g., "Ledger.Transaction.md") for navigation builder.
# 9.  Navigation: `build_nav_from_flat_files` is called with list of flat filenames.
# 10. `index.md` Handling in Assets: Improved logic for handling main `index.md` file,
#     ensuring it's created or copied if not generated through Agda processing, and included
#     in nav list.
# 11. YAML Merge Logic: slightly refined YAML merge logic for `mkdocs.yml` to be more robust.
# 12. Logging: Add more `logging.debug` statements for better traceability of filename transforms.
#
# :USAGE:
# From the main project directory,
#            `python ./scripts/mkdocs/build.py [--run-agda]`
# :OUTPUT:
# - _build/mkdocs/macros.json         (LaTeX macros in JSON format)
# - _build/mkdocs/agda_snapshot_src/  (main output for shake)
# - _build/mkdocs/mkdocs_src/         (mkdocs site source)
# - _build/mkdocs/build.log           (log file)

import os
import sys
import subprocess
import json
import shutil
from pathlib import Path
import logging
import argparse               # for optional --run-agda flag
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
from bs4 import BeautifulSoup # for link rewriting (.html -> .md)

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
AGDA_SNAPSHOT_SRC_DIR = BUILD_MKDOCS_DIR / "agda_snapshot_src" # for shake/agda context
AGDA_HTML_OUTPUT_DIR = BUILD_MKDOCS_DIR / "agda_html_output"   # for `agda --html` output

# Optional: Still assemble an interim mkdocs site for preview
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


def setup_directories(run_agda_html):
    """Sets up the necessary directories for the build process."""
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


# Helper class for managing paths within the .lagda processing loop
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
        self.final_lagda_md = FINAL_LAGDA_MD_DIR / self.relative.with_suffix(".lagda.md")

        # snapshot related paths
        self.snapshot_original_lagda = AGDA_SNAPSHOT_SRC_DIR / self.relative # Original .lagda in snapshot
        # target for processed .lagda.md in the snapshot
        self.snapshot_target_lagda_md = AGDA_SNAPSHOT_SRC_DIR / self.relative.with_suffix(".lagda.md")

        # path for .md file in mkdocs docs directory (before Agda html processing)
        # typically .lagda.md -> .md
        self.mkdocs_interim_md = MKDOCS_DOCS_DIR / self.relative.with_suffix(".md")

    def ensure_parent_dirs_exist(self):
        """Create all needed parent directories for output files of this specific relative_path."""
        # Collect all unique parent directories that need to exist for this file's outputs
        # Note: base directories (TEMP_DIR, etc.) are created by setup_directories(); this is for
        #       subdirectories *within* those base output directories.
        parents_to_create = {
            self.temp_lagda.parent,
            self.code_blocks_json.parent,
            self.intermediate_md.parent,
            self.final_lagda_md.parent,
            self.snapshot_target_lagda_md.parent, # parent of target in snapshot
            self.mkdocs_interim_md.parent,
        }
        for parent_dir in parents_to_create:
            parent_dir.mkdir(parents=True, exist_ok=True)

def rewrite_internal_link_extensions(html_content, from_ext=".html", to_ext=".md"):
    """
    Rewrites hrefs in HTML content from one extension to another for relative links.
    e.g., from ".html" to ".md".
    """
    soup = BeautifulSoup(html_content, 'html.parser')
    modified = False
    for a_tag in soup.find_all('a', href=True):
        href = a_tag['href']

        # skip absolute urls, anchor-only links, or other protocols
        if href.startswith(('#', 'http://', 'https://', 'mailto:', 'ftp:', 'file:')):
            continue

        href_file_part = href
        href_anchor_part = ""
        if '#' in href:
            href_file_part, href_anchor_part = href.split('#', 1)
            href_anchor_part = '#' + href_anchor_part

        # check if file part of href ends with 'from_ext'
        if href_file_part.endswith(from_ext):
            new_href_file_part = href_file_part[:-len(from_ext)] + to_ext
            a_tag['href'] = new_href_file_part + href_anchor_part
            modified = True
            # logging.debug(f"Link extension rewritten: '{href}' to '{a_tag['href']}'")

    # Only return new content if modifications were made, to avoid re-parsing if not needed.
    # However, always returning str(soup) is safer and handles all cases.
    return str(soup)

def build_nav_from_flat_files(flat_file_paths_str_list):
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
        page_title_str = name_parts[-1].replace('_', ' ').replace('-', ' ').capitalize()
        section_path_parts = name_parts[:-1] # e.g., ["Ledger"] or ["External", "Lib"]

        current_level_dict = nav_tree
        for section_name_raw in section_path_parts:
            section_title_str = section_name_raw.replace('_', ' ').replace('-', ' ').capitalize()

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
                 current_level_dict[f"{page_title_str} (Page)"] = filename_str
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

# --- Main Build Logic ---
def main(run_agda_html=False):
    """Orchestrates the documentation build pipeline."""
    # Logging is set up by the __main__ block calling setup_logging() once.
    # No need to call it inside main() if main() isn't the direct script entry point for logging.

    logging.info("Starting MkDocs build process...")

    # 1. Setup directories.
    logging.info("Setting up build directories...")
    setup_directories(run_agda_html)

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

    # 4. Convert .agda to .lagda.md in the snapshot
    logging.info("Converting .agda files to .lagda.md in the snapshot directory...")
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

    # 5. Generate snapshot .agda-lib file
    agda_lib_dependencies = [ # From your script, ensure these are current
        "standard-library", "standard-library-classes", "standard-library-meta", "abstract-set-theory"
    ]
    agda_lib_content = f"name: snapshot-build\ninclude: .\ndepend: {' '.join(agda_lib_dependencies)}\n"
    snapshot_lib_file = AGDA_SNAPSHOT_SRC_DIR / f"{AGDA_SNAPSHOT_SRC_DIR.name}.agda-lib"
    try:
        with open(snapshot_lib_file, "w", encoding="utf-8") as f:
            f.write(agda_lib_content)
        logging.info(f"Generated {snapshot_lib_file.name} in snapshot directory.")
    except Exception as e:
        logging.error(f"Failed to write {snapshot_lib_file.name}: {e}")
        sys.exit(1)

    # --- Process original .lagda files (LaTeX-based) through the pipeline ---
    logging.info(f"Searching for original .lagda (LaTeX-based) files in {SRC_DIR.relative_to(PROJECT_ROOT)}...")
    original_latex_lagda_files = sorted(list(SRC_DIR.rglob("*.lagda"))) # Assuming these are the LaTeX ones
    logging.info(f"Found {len(original_latex_lagda_files)} original .lagda (LaTeX-based) files to process.")

    # This list will store Path objects to all .lagda.md files in the AGDA_SNAPSHOT_SRC_DIR
    # that are ready for the (optional) `agda --html` step.
    # It includes those converted from .agda and those processed from original .lagda.
    candidate_literate_md_files_in_snapshot = []

    # Add files converted from .agda (they are already .lagda.md in snapshot)
    for lagda_md_file in AGDA_SNAPSHOT_SRC_DIR.rglob("*.lagda.md"):
        candidate_literate_md_files_in_snapshot.append(lagda_md_file)

    # Process original LaTeX .lagda files
    for lagda_file_abs_path in original_latex_lagda_files:
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR) # e.g., Module/File.lagda
        logging.info(f"\nProcessing original LaTeX .lagda: {relative_path}")

        paths = LagdaProcessingPaths(relative_path) # Manages intermediate file paths
        paths.ensure_parent_dirs_exist()

        try:
            # A: Preprocess (LaTeX .lagda -> .lagda.temp)
            run_command([
                "python", str(PREPROCESS_PY),
                str(lagda_file_abs_path),
                str(MACROS_JSON),
                str(paths.code_blocks_json)
            ], stdout_file=str(paths.temp_lagda))

            # B: Pandoc + Lua (.lagda.temp -> .md.intermediate)
            run_command([
                "pandoc", str(paths.temp_lagda),
                "-f", "latex", "-t", "gfm+attributes", # Or your preferred Markdown
                "--lua-filter", str(LUA_FILTER),
                "-o", str(paths.intermediate_md)
            ])

            # C: Postprocess (.md.intermediate -> final .lagda.md for snapshot)
            # Output of postprocess is the .lagda.md we want in the snapshot
            # The third argument to postprocess.py is the *output file name*.
            # paths.final_lagda_md is set to .../relative_path.with_suffix(".lagda.md")
            run_command([
                "python", str(POSTPROCESS_PY),
                str(paths.intermediate_md),
                str(paths.code_blocks_json),
                str(paths.final_lagda_md) # This is the output .lagda.md
            ])

            # D: Update Snapshot: Replace original .lagda with processed .lagda.md
            snapshot_original_latex_lagda = AGDA_SNAPSHOT_SRC_DIR / relative_path # Path to original .lagda in snapshot
            snapshot_target_literate_md = AGDA_SNAPSHOT_SRC_DIR / relative_path.with_suffix(".lagda.md") # Target .lagda.md in snapshot

            if snapshot_original_latex_lagda.is_file():
                logging.info(f"  Removing original {snapshot_original_latex_lagda.name} from snapshot.")
                snapshot_original_latex_lagda.unlink()

            logging.info(f"  Copying processed {paths.final_lagda_md.name} to snapshot as {snapshot_target_literate_md.name}.")
            shutil.copy2(paths.final_lagda_md, snapshot_target_literate_md)

            if snapshot_target_literate_md not in candidate_literate_md_files_in_snapshot:
                candidate_literate_md_files_in_snapshot.append(snapshot_target_literate_md)

        except Exception as e:
            logging.error(f"Error processing file {relative_path}: {e}", exc_info=True)
            logging.warning(f"Skipping further processing for {relative_path.name}.")
            continue

    # Ensure the list of candidates is unique and sorted for deterministic builds
    unique_literate_md_files_in_snapshot = sorted(list(set(candidate_literate_md_files_in_snapshot)))
    logging.info(f"\nTotal unique literate .md files in snapshot for Agda processing: {len(unique_literate_md_files_in_snapshot)}")
    for f in unique_literate_md_files_in_snapshot:
        logging.debug(f"  Candidate for Agda: {f.relative_to(AGDA_SNAPSHOT_SRC_DIR)}")

    # --- Optional Step: Agda --html (now using flat naming) ---
    final_md_files_for_mkdocs_nav = [] # List of flat filenames (e.g., "Module.File.md") for MkDocs nav

    if run_agda_html:
        logging.info(f"\nRunning Agda --html on {len(unique_literate_md_files_in_snapshot)} files in snapshot...")
        AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

        if not unique_literate_md_files_in_snapshot:
            logging.warning("No literate Agda files found in snapshot for Agda --html step.")

        for lagda_md_file_in_snapshot in unique_literate_md_files_in_snapshot:
            # lagda_md_file_in_snapshot is like ".../agda_snapshot_src/Ledger/Transaction.lagda.md"
            relative_path_from_snapshot_root = lagda_md_file_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR) # e.g. "Ledger/Transaction.lagda.md"

            # Determine flat module name (e.g., "Ledger.Transaction")
            module_name_parts = list(relative_path_from_snapshot_root.parent.parts)
            file_stem = relative_path_from_snapshot_root.name
            if file_stem.endswith(".lagda.md"): file_stem = file_stem[:-len(".lagda.md")]
            elif file_stem.endswith(".lagda"): file_stem = file_stem[:-len(".lagda")] # Should not happen if previous steps are correct
            elif file_stem.endswith(".md"): file_stem = file_stem[:-len(".md")] # e.g. if it was already just ".md"

            # Handle index files correctly for flat name
            is_index_file = file_stem.lower() == "index"
            if not module_name_parts and is_index_file: # Top-level index.lagda.md -> "index"
                module_name_flat = "index"
            elif not module_name_parts: # Top-level SomeFile.lagda.md -> "SomeFile"
                module_name_flat = file_stem
            else: # Nested file
                if not is_index_file : # Ledger/Index.lagda.md -> Ledger (if we want index to represent the dir) or Ledger.Index
                    module_name_parts.append(file_stem)
                module_name_flat = ".".join(part for part in module_name_parts if part)


            # Agda's output filename in AGDA_HTML_OUTPUT_DIR (e.g., "Ledger.Transaction.md")
            agda_actual_output_filename = module_name_flat + ".md"
            agda_generated_file_on_disk = AGDA_HTML_OUTPUT_DIR / agda_actual_output_filename

            # Final flat filename in MkDocs docs directory (same as Agda's output)
            final_mkdocs_filename = agda_actual_output_filename
            mkdocs_target_file_abs_path = MKDOCS_DOCS_DIR / final_mkdocs_filename

            logging.info(f"  Agda processing for: {relative_path_from_snapshot_root} (module: {module_name_flat})")
            logging.debug(f"    Agda CWD: {AGDA_SNAPSHOT_SRC_DIR.resolve()}")
            logging.debug(f"    Agda input file arg: {str(relative_path_from_snapshot_root)}")
            logging.debug(f"    Agda --html-dir: {AGDA_HTML_OUTPUT_DIR.resolve()}")
            logging.debug(f"    Agda actual output expected: {agda_generated_file_on_disk}")
            logging.debug(f"    Final MkDocs file: {mkdocs_target_file_abs_path}")

            try:
                run_command([
                    "agda", "--html", "--html-highlight=code",
                    f"--html-dir={AGDA_HTML_OUTPUT_DIR.resolve()}",
                    "-i", ".", # Relative to CWD
                    str(relative_path_from_snapshot_root)
                ], cwd=AGDA_SNAPSHOT_SRC_DIR.resolve())

                mkdocs_target_file_abs_path.parent.mkdir(parents=True, exist_ok=True)

                if agda_generated_file_on_disk.exists():
                    with open(agda_generated_file_on_disk, 'r', encoding='utf-8') as f_agda_src:
                        agda_content = f_agda_src.read()

                    modified_content = rewrite_internal_link_extensions(
                        agda_content, from_ext=".html", to_ext=".md"
                    )

                    with open(mkdocs_target_file_abs_path, 'w', encoding='utf-8') as f_final_md:
                        f_final_md.write(modified_content)
                    logging.info(f"    Successfully processed and wrote {final_mkdocs_filename} to docs.")
                else:
                    logging.warning(f"    Agda output file {agda_generated_file_on_disk} not found! "
                                    f"Copying snapshot file {lagda_md_file_in_snapshot.name} as fallback.")
                    shutil.copy2(lagda_md_file_in_snapshot, mkdocs_target_file_abs_path)

                final_md_files_for_mkdocs_nav.append(str(final_mkdocs_filename))

            except Exception as e:
                logging.error(f"  Agda --html or processing failed for {relative_path_from_snapshot_root}: {e}", exc_info=True)
                logging.warning(f"  Fallback: Copying snapshot file {lagda_md_file_in_snapshot.name} to {mkdocs_target_file_abs_path.name} due to error.")
                mkdocs_target_file_abs_path.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(lagda_md_file_in_snapshot, mkdocs_target_file_abs_path)
                final_md_files_for_mkdocs_nav.append(str(final_mkdocs_filename)) # Use the target flat name
    else: # Not running agda --html
        logging.info("\nSkipping agda --html step. Copying .lagda.md files from snapshot with flat names.")
        for lagda_md_file_in_snapshot in unique_literate_md_files_in_snapshot:
            relative_path_from_snapshot_root = lagda_md_file_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR)

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
            mkdocs_target_full_path = MKDOCS_DOCS_DIR / final_flat_filename

            mkdocs_target_full_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(lagda_md_file_in_snapshot, mkdocs_target_full_path)
            final_md_files_for_mkdocs_nav.append(str(final_flat_filename))
            logging.debug(f"  Copied {lagda_md_file_in_snapshot.name} to {mkdocs_target_full_path.name} (flat name)")

    # --- Assemble interim/final mkdocs site source ---
    logging.info("\nAssembling mkdocs source directory...")
    # Copy static assets (Agda.css, custom.css, custom.js, index.md template)
    # This part of your script can remain largely the same.
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
    # If an "index.md" was generated from Agda files (e.g. from "index.lagda.md"), it will be in final_md_files_for_mkdocs_nav.
    # If not, and a template exists, copy it.
    # Otherwise, create a minimal one.
    home_page_filename = "index.md" # The target flat name for the homepage
    if not any(f.lower() == home_page_filename.lower() for f in final_md_files_for_mkdocs_nav):
        mkdocs_index_final_path = MKDOCS_DOCS_DIR / home_page_filename
        if INDEX_MD_TEMPLATE.exists():
            assets_to_copy[INDEX_MD_TEMPLATE] = mkdocs_index_final_path
            logging.info(f"Using index.md template: {INDEX_MD_TEMPLATE}")
        elif not mkdocs_index_final_path.exists(): # Only create if truly no index.md
            logging.warning(f"No 'index.md' generated or found as template. Creating minimal index.md.")
            mkdocs_index_final_path.parent.mkdir(parents=True, exist_ok=True)
            with open(mkdocs_index_final_path, "w", encoding="utf-8") as f: f.write("# Welcome\n")

        # Add to nav list if we just created/copied it and it wasn't from Agda processing
        if home_page_filename not in final_md_files_for_mkdocs_nav:
             final_md_files_for_mkdocs_nav.append(home_page_filename)


    for src_path, dest_path in assets_to_copy.items():
        try:
            logging.info(f"  Copying asset {src_path.name} to {dest_path.relative_to(PROJECT_ROOT)}")
            dest_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src_path, dest_path)
        except Exception as e:
            logging.error(f"Failed to copy asset {src_path} to {dest_path}: {e}")

    # Ensure unique list for nav, with index.md typically first.
    final_md_files_for_mkdocs_nav = sorted(
        list(set(final_md_files_for_mkdocs_nav)),
        key=lambda f: (f.lower() != home_page_filename.lower(), f.lower())
    )

    # Generate mkdocs.yml
    logging.info("Generating final mkdocs.yml...")
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {} # Start with empty and merge from template/defaults
    default_theme_name = "material"
    default_cfg = {
        "site_name": "Agda Ledger Formalization", # Placeholder
        "theme": {"name": default_theme_name, "features": ["navigation.expand"]}, # Added nav.expand
        "extra_css": [],
        "extra_javascript": [],
        "markdown_extensions": [
            "admonition", "pymdownx.details", "pymdownx.superfences",
            "attr_list", "md_in_html",
            {"toc": {"permalink": True, "slugify": "markdown.extensions.toc.slugify_unicode"}},
            {"pymdownx.highlight": {"anchor_linenums": True, "use_pygments": True}}, # Example config
            "pymdownx.inlinehilite", "pymdownx.snippets", "pymdaonx.tabbed",
            {"pymdownx.emoji": {"emoji_index": "pymdownx.emoji.gemoji", "emoji_generator": "pymdownx.emoji.to_svg"}},
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

    logging.info(f"\nBuild script finished.")
    if not run_agda_html:
         logging.info(f"Primary output for Shake/Agda (if used): {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Full log saved to: {LOG_FILE.relative_to(PROJECT_ROOT)}")
    logging.info(f"To serve the site locally (from project root): mkdocs serve --config-file \"{mkdocs_yml_path}\"")
    # Or if CWD is PROJECT_ROOT: mkdocs serve -f "{mkdocs_yml_path.relative_to(PROJECT_ROOT)}"

if __name__ == "__main__":
    # Add command line argument parsing
    parser = argparse.ArgumentParser(description="Build mkdocs site source from literate Agda files.")
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
        logging.exception("Build failed due to an unhandled error.") # log exception traceback
        sys.exit(1)
    finally:
        logging.shutdown() # Ensure logs are flushed
