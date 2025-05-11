# build.py
#
# Purpose: Prepare source files for mkdocs/shake build.
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
#            `python ./scripts/mkdocs/build.py [--run-agda]`
#        or, better yet,
#            `python -m scripts.mkdocs.build [--run-agda]`
# Output:
# - _build/mkdocs/macros.json
# - _build/mkdocs/agda_snapshot_src/ (main output for shake)
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

# Attempt to import agda2lagda script
try:
    from agda2lagda import convert_agda_to_lagda_md
except ImportError:
    print(f"FATAL: Could not import 'convert_agda_to_lagda_md'. Ensure 'agda2lagda.py' is in {SCRIPTS_DIR}.", file=sys.stderr)
    sys.exit(1)

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
            # mkdocs often uses `Ledger/Transaction/index.md` for the section's main page.
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

    # Convert the dict tree to mkdocs nav list format (recursive helper)
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


# --- Main Build Logic ---
def main(run_agda_html=False): # Add flag argument
    """Orchestrates the documentation build pipeline up to preparing source for shake/agda."""
    setup_logging() # Initialize logging

    # 1. Setup directories.
    logging.info("Setting up build directories...")
    setup_directories(run_agda_html)  # create TEMP_DIR, CODE_BLOCKS_DIR etc.

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

    # 4. Convert .agda to .lagda.md in the snapshot
    logging.info("Converting .agda files to .lagda.md in the snapshot directory...")
    conversion_success = convert_agda_to_lagda_md(
        str(AGDA_SNAPSHOT_SRC_DIR),
        project_root_for_logging=PROJECT_ROOT
    )
    if not conversion_success:
        logging.error("Failed during .agda to .lagda.md conversion. Exiting.")
        sys.exit(1)

    # 5. Generate snapshot .agda-lib file
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

    mkdocs_nav_structure = {} # Collect nav info for interim mkdocs site

    # --- Process Literate Agda Files (.lagda from original source) ---
    # This section now processes .lagda files found in the *original* SRC_DIR.
    # The output (.lagda.md) will replace the corresponding .lagda file in the AGDA_SNAPSHOT_SRC_DIR.
    logging.info(f"Searching for original .lagda files in {SRC_DIR.relative_to(PROJECT_ROOT)} for processing...")
    original_lagda_files = sorted(list(SRC_DIR.rglob("*.lagda")))
    logging.info(f"Found {len(original_lagda_files)} original .lagda files to process.")

    if not original_lagda_files:
        logging.warning("No original .lagda files found in src/."); # Don't exit, just finish

    # This list will store paths to `.lagda.md` files within snapshot directory
    # that have been processed (either from original .lagda or converted from .agda)
    # and are candidates for `agda --html` step.
    processed_literate_files_in_snapshot = []

    # Populate with files converted from .agda (they are already .lagda.md in snapshot)
    for lagda_md_file in AGDA_SNAPSHOT_SRC_DIR.rglob("*.lagda.md"):
        if ".lagda" not in lagda_md_file.suffixes: # Basic check, could be more robust if needed
            processed_literate_files_in_snapshot.append(lagda_md_file)

    for lagda_file_abs_path in original_lagda_files:
        # `relative_path` is like "Module/Submodule/File.lagda"
        relative_path = lagda_file_abs_path.relative_to(SRC_DIR)

        # more concise logging:
        logging.info(f"\nProcessing original .lagda: {relative_path.relative_to(PROJECT_ROOT.parent) if PROJECT_ROOT.parent in relative_path.parents else relative_path}")

        # Instantiate the helper class for paths
        paths = LagdaProcessingPaths(relative_path)

        # Ensure parent directories for this file's outputs exist
        paths.ensure_parent_dirs_exist()

        # --- Execute Pipeline Steps (up to Postprocess) ---
        try:
            # A: Preprocess
            logging.info(f"  Running preprocess.py for {relative_path.name}...")
            run_command([
                "python", PREPROCESS_PY,
                lagda_file_abs_path,             # input: the original .lagda file
                MACROS_JSON,
                paths.code_blocks_json           # output path for code blocks
            ], stdout_file=paths.temp_lagda)     # output path for .lagda.temp

            # B: Pandoc + Lua
            logging.info(f"  Running Pandoc + Lua for {relative_path.name}...")
            run_command([
                "pandoc", paths.temp_lagda,      # input
                "-f", "latex", "-t", "gfm+attributes",
                "--lua-filter", LUA_FILTER,
                "-o", paths.intermediate_md      # output
            ])

            # C: Postprocess
            logging.info(f"  Running postprocess.py for {relative_path.name}...")
            run_command([
                "python", POSTPROCESS_PY,
                paths.intermediate_md,           # input
                paths.code_blocks_json,          # input
                paths.final_lagda_md             # output
            ])

            # D: Update Snapshot: Remove original .lagda and copy generated .lagda.md
            # The original .lagda file might have been copied during the initial snapshot.
            if paths.snapshot_original_lagda.is_file():
                logging.info(f"  Removing original {paths.snapshot_original_lagda.name} from snapshot...")
                paths.snapshot_original_lagda.unlink()
            elif paths.snapshot_original_lagda.exists(): # check if it exists but isn't a file
                logging.warning(f"  Path {paths.snapshot_original_lagda.name} exists in snapshot but is not a file; cannot remove.")

            logging.info(f"  Copying processed {paths.final_lagda_md.name} to snapshot as {paths.snapshot_target_lagda_md.name}...")
            shutil.copy2(paths.final_lagda_md, paths.snapshot_target_lagda_md)

            # Add path of newly processed .lagda.md file *in the snapshot* to list for `agda --html` step.
            # Avoid duplicates if an `.lagda.md` file was already there from `.agda` conversion
            # and pipeline somehow overwrites it (shouldn't happen since names are unique).
            if paths.snapshot_target_lagda_md not in processed_literate_files_in_snapshot:
                processed_literate_files_in_snapshot.append(paths.snapshot_target_lagda_md)
            else:        # If already there, assume it's the correct one.
                pass

        except Exception as e:
            logging.error(f"Error processing file {relative_path}: {e}", exc_info=True)
            logging.warning(f"Skipping further processing for {relative_path.name}.")
            # Do not add to processed_literate_files_in_snapshot if it failed
            continue # Skip to next file

    # --- Optional Step: Agda --html (Run only if flag is set) ---
    final_md_files_for_mkdocs = [] # List of final .md files to use in nav
                                   # (path strings relative to MKDOCS_DOCS_DIR)

    # Before running `agda --html`, ensure list of processed files is unique and sorted for deterministic builds.
    # At this point, `processed_literate_files_in_snapshot` contains all `.lagda.md` files in the snapshot that are
    # ready for Agda processing; includes those converted from `.agda` and those processed from original `.lagda`.
    unique_processed_snapshot_files = sorted(list(set(processed_literate_files_in_snapshot)))

    if run_agda_html:
        logging.info(f"\nRunning agda --html on all {len(unique_processed_snapshot_files)} processed literate files in snapshot...")
        AGDA_HTML_OUTPUT_DIR.mkdir(parents=True, exist_ok=True) # ensure output dir for Agda HTML exists

        if not unique_processed_snapshot_files:
            logging.warning("No literate Agda files found in snapshot for Agda --html step.")

        # Run Agda on each processed `.lagda.md` file within snapshot directory.  N.B. Agda might
        # be smarter if run on just top-level modules, but processing each ensures all are attempted.
        for lagda_md_in_snapshot in unique_processed_snapshot_files: # Use the comprehensive, unique list
            # `lagda_md_in_snapshot` is an absolute Path object to a .lagda.md file
            # within AGDA_SNAPSHOT_SRC_DIR.

            # `relative_path_in_snapshot` is like "Module/Submodule/File.lagda.md"
            relative_path_in_snapshot = lagda_md_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR)
            logging.info(f"  Processing for Agda --html: {relative_path_in_snapshot}")

            # 1. Determine target path and name in the mkdocs docs directory (e.g., "Ledger/File.md").
            #    Final output in mkdocs should be just ".md".
            target_md_filename_in_mkdocs = relative_path_in_snapshot.name.replace(".lagda.md", ".md")
            # `target_path_relative_to_mkdocs_docs` like "Module/Submodule/File.md"
            target_path_relative_to_mkdocs_docs = relative_path_in_snapshot.parent / target_md_filename_in_mkdocs
            # `mkdocs_target_md_full_path` is absolute path for final .md in mkdocs source tree
            mkdocs_target_md_full_path = MKDOCS_DOCS_DIR / target_path_relative_to_mkdocs_docs

            # 2. Determine the Agda module name (e.g., "Module.Submodule.File")
            #    This is derived from the path relative to the snapshot root, excluding ".lagda.md"
            module_name_parts = list(relative_path_in_snapshot.parent.parts) + [relative_path_in_snapshot.name.replace(".lagda.md", "")]
            module_name = ".".join(part for part in module_name_parts if part and part != '.') # Clean up empty parts or '.'

            # Expected output HTML file from Agda (will be in AGDA_HTML_OUTPUT_DIR)
            # Agda typically names its output based on the module name, e.g., "Module.Submodule.File.md"
            agda_expected_output_filename = module_name + ".md"
            agda_generated_html_source_file = AGDA_HTML_OUTPUT_DIR / agda_expected_output_filename

            logging.debug(f"    Agda module: {module_name}, Expecting output: {agda_generated_html_source_file.name}")

            try:
                # Run Agda with the snapshot directory as CWD, using the generated .agda-lib
                # Input file is `lagda_md_in_snapshot` (absolute path)
                # Agda needs the file path *relative to its CWD* if not absolute, or just absolute.
                # Since CWD is AGDA_SNAPSHOT_SRC_DIR, we can pass the relative path.
                run_command([
                    "agda", "--html", "--html-highlight=code",
                    f"--html-dir={AGDA_HTML_OUTPUT_DIR.resolve()}", # Agda's output directory
                    "-i", ".", # Include path is the CWD (snapshot root)
                    str(relative_path_in_snapshot) # Input file relative to CWD
                ], cwd=AGDA_SNAPSHOT_SRC_DIR.resolve())

                # Ensure parent directory for the final .md file in MkDocs docs exists
                mkdocs_target_md_full_path.parent.mkdir(parents=True, exist_ok=True)

                if agda_generated_html_source_file.exists():
                    logging.info(f"    Copying Agda HTML output {agda_generated_html_source_file.name} to {mkdocs_target_md_full_path.relative_to(PROJECT_ROOT)}")
                    shutil.copy2(agda_generated_html_source_file, mkdocs_target_md_full_path)
                    final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))
                else:
                    logging.warning(f"    Agda HTML output not found: {agda_generated_html_source_file} (expected for module {module_name})")
                    logging.info(f"    Fallback: Copying pre-Agda file {lagda_md_in_snapshot.name} to {mkdocs_target_md_full_path.name} (renamed to .md)")
                    shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md_full_path) # Copy from snapshot, rename to .md
                    final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))

            except Exception as e:
                logging.error(f"  Agda --html failed for {relative_path_in_snapshot}: {e}", exc_info=True)
                logging.warning(f"  Skipping Agda HTML for this file. Copying {lagda_md_in_snapshot.name} from snapshot as fallback (renamed to .md).")
                mkdocs_target_md_full_path.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md_full_path) # Copy from snapshot, rename
                final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))
    else:
        # If not running Agda step, copy all processed .lagda.md files from the snapshot
        # to the MkDocs docs directory, renaming them to .md.
        logging.info("\nSkipping agda --html step.")
        logging.info("Copying all processed *.lagda.md files from snapshot to MkDocs source (renamed to .md)...")

        if not unique_processed_snapshot_files:
            logging.info("No processed literate files in snapshot to copy to MkDocs.")

        for lagda_md_in_snapshot in unique_processed_snapshot_files:
            relative_path_in_snapshot = lagda_md_in_snapshot.relative_to(AGDA_SNAPSHOT_SRC_DIR) # e.g. Module/File.lagda.md

            target_md_filename_in_mkdocs = relative_path_in_snapshot.name.replace(".lagda.md", ".md")
            target_path_relative_to_mkdocs_docs = relative_path_in_snapshot.parent / target_md_filename_in_mkdocs
            mkdocs_target_md_full_path = MKDOCS_DOCS_DIR / target_path_relative_to_mkdocs_docs

            mkdocs_target_md_full_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(lagda_md_in_snapshot, mkdocs_target_md_full_path)
            final_md_files_for_mkdocs.append(str(target_path_relative_to_mkdocs_docs))
            logging.debug(f"  Copied {lagda_md_in_snapshot.name} to {mkdocs_target_md_full_path.relative_to(PROJECT_ROOT)}")

    # --- Assemble interim/final mkdocs site source ---
    # Ensure `final_md_files_for_mkdocs` is correctly populated with paths relative to `MKDOCS_DOCS_DIR`
    # for `build_nested_nav` function.  The logic above for both `if run_agda_html:` and its `else:` branch
    # populates `final_md_files_for_mkdocs` with these relative strings.
    logging.info("\nAssembling mkdocs source directory...")
    # Copy static assets
    assets_to_copy = {}
    agda_css_target = MKDOCS_CSS_DIR / "Agda.css"
    if run_agda_html: # Only copy Agda.css if Agda step ran
        try:
            # Try to find Agda.css via agda command
            agda_css_proc = run_command(["agda", "--print-agda-data-dir"], capture_output=True, check=False)
            if agda_css_proc.returncode == 0  and agda_css_proc.stdout:
                agda_css_source = Path(agda_css_proc.stdout.strip()) / "html" / "Agda.css"
                if agda_css_source.exists():
                    assets_to_copy[agda_css_source] = agda_css_target
                else:
                    logging.warning(f"Agda.css not found at expected location: {agda_css_source}")
            else:
                logging.warning(f"Could not run 'agda --print-agda-data-dir' to find Agda.css. Stderr: {agda_css_proc.stderr}")
        except Exception as e:
            logging.warning(f"Error trying to find Agda.css: {e}")

    if CUSTOM_CSS_SOURCE.exists():
        assets_to_copy[CUSTOM_CSS_SOURCE] = MKDOCS_CSS_DIR / CUSTOM_CSS_SOURCE.name
    else:
        logging.warning(f"custom.css not found at {CUSTOM_CSS_SOURCE}")

    if CUSTOM_JS_SOURCE.exists():
        assets_to_copy[CUSTOM_JS_SOURCE] = MKDOCS_JS_DIR / CUSTOM_JS_SOURCE.name
    else:
        logging.warning(f"custom.js not found at {CUSTOM_JS_SOURCE}")

    # Handle index.md template copying; should be copied to MKDOCS_DOCS_DIR / "index.md"
    # `index.md` should be in `final_md_files_for_mkdocs` if it exists.
    mkdocs_index_final_path = MKDOCS_DOCS_DIR / "index.md"

    if INDEX_MD_TEMPLATE.exists():
        assets_to_copy[INDEX_MD_TEMPLATE] = mkdocs_index_final_path
    elif not mkdocs_index_final_path.exists(): # If template doesn't exist and no index was generated
        logging.warning(f"index.md template not found at {INDEX_MD_TEMPLATE}, and no index.md in docs; creating minimal.")
        mkdocs_index_final_path.parent.mkdir(parents=True, exist_ok=True)
        with open(mkdocs_index_final_path, "w", encoding="utf-8") as f: f.write("# Welcome\n")
        # ensure 'index.md' available for nav if created here
        if 'index.md' not in final_md_files_for_mkdocs:
            final_md_files_for_mkdocs.append('index.md')

    for src, dest in assets_to_copy.items():
        try:
            logging.info(f"  Copying {src.name} to {dest.relative_to(PROJECT_ROOT)}")
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)
        except Exception as e: logging.error(f"Failed to copy asset {src} to {dest}: {e}")

    # Ensure 'index.md' is tracked for navigation if it exists in the docs dir now
    if mkdocs_index_final_path.exists() and 'index.md' not in final_md_files_for_mkdocs:
        # This handles the case where index.md was copied by the assets loop but not from Agda processing
        final_md_files_for_mkdocs.insert(0, 'index.md') # Ensure it's first for build_nested_nav to pick up as Home
        final_md_files_for_mkdocs = sorted(list(set(final_md_files_for_mkdocs)), key=lambda x: (x != 'index.md', x)) # Keep index.md first

    # Generate mkdocs.yml
    logging.info("Generating final mkdocs.yml...")
    mkdocs_yml_path = MKDOCS_SRC_DIR / "mkdocs.yml"
    mkdocs_config = {}
    default_theme_name = "material" # Default theme
    default_cfg = { # Base config
        "site_name": "Agda Ledger Formalization", # Placeholder
        "theme": {"name": default_theme_name},
        "extra_css": [],
        "extra_javascript": [],
        "markdown_extensions": [
            "admonition",
            {"toc": {"permalink": True, "slugify": "markdown.extensions.toc.slugify_unicode"}}, # Example for unicode slugs
            {"pymdownx.superfences": {}},
            "attr_list",
            "md_in_html", # If you need markdown parsing inside HTML blocks
            "pymdownx.highlight", # if using pymdownx highlighter
            "pymdownx.inlinehilite",
            "pymdownx.snippets",
            "pymdownx.details",
            "pymdownx.tabbed",
            # {"pymdownx.emoji": {"emoji_index": "pymdownx.emoji.gemoji", "emoji_generator": "pymdownx.emoji.to_png"}},
            {"pymdownx.emoji": {}},
        ]}

    # Conditionally add Agda.css if it was copied
    if (MKDOCS_CSS_DIR / "Agda.css").exists():
        default_cfg["extra_css"].append("css/Agda.css")
    if (MKDOCS_CSS_DIR / CUSTOM_CSS_SOURCE.name).exists():
        default_cfg["extra_css"].append(f"css/{CUSTOM_CSS_SOURCE.name}")
    if (MKDOCS_JS_DIR / CUSTOM_JS_SOURCE.name).exists():
        default_cfg["extra_javascript"].append(f"js/{CUSTOM_JS_SOURCE.name}")
    # Load template if available
    if MKDOCS_YML_TEMPLATE.exists() and HAS_YAML:
        try:
            with open(MKDOCS_YML_TEMPLATE, 'r', encoding='utf-8') as f:
                mkdocs_config = yaml.full_load(f) or {}
            logging.info(f"Loaded mkdocs.yml template from {MKDOCS_YML_TEMPLATE.relative_to(PROJECT_ROOT)}")

            # Merge defaults intelligently
            mkdocs_config.setdefault("site_name", default_cfg["site_name"])
            theme_config = mkdocs_config.setdefault("theme", {})
            if isinstance(theme_config, str): # If template just had theme: material
                mkdocs_config["theme"] = {"name": theme_config}
            mkdocs_config["theme"].setdefault("name", default_theme_name)
            # For lists like extra_css, extra_javascript, markdown_extensions: append defaults if not present
            for key in ['extra_css', 'extra_javascript', 'markdown_extensions']:
                template_list = mkdocs_config.get(key, [])
                if not isinstance(template_list, list): template_list = [] # Ensure it's a list
                # Create a new list with template items first, then unique default items
                combined_list = list(template_list)
                for item in default_cfg.get(key, []):
                    # Handle dicts in markdown_extensions (e.g. toc) carefully for uniqueness
                    is_present = False
                    if isinstance(item, dict):
                        item_key = list(item.keys())[0]
                        for t_item in template_list:
                            if isinstance(t_item, dict) and list(t_item.keys())[0] == item_key:
                                is_present = True
                                break
                    elif item in template_list:
                        is_present = True
                    if not is_present:
                        combined_list.append(item)
                mkdocs_config[key] = combined_list
            # For other keys, just use setdefault
            for key, value in default_cfg.items():
                if key not in ['extra_css', 'extra_javascript', 'markdown_extensions', 'theme', 'site_name']:
                    mkdocs_config.setdefault(key, value)

        except Exception as e:
            logging.warning(f"Failed loading/merging template {MKDOCS_YML_TEMPLATE.relative_to(PROJECT_ROOT)}: {e}. Using base defaults.")
            mkdocs_config = default_cfg
    else:
        if not HAS_YAML and MKDOCS_YML_TEMPLATE.exists():
             logging.warning(f"MkDocs YML template found ({MKDOCS_YML_TEMPLATE.relative_to(PROJECT_ROOT)}) but PyYAML not installed. Using defaults.")
        mkdocs_config = default_cfg

    # Build nav structure from collected paths and titles; ensure `final_md_files_for_mkdocs`
    # contains `index.md` and is handled correctly by `build_nested_nav` for `Home`.
    current_docs_files = [f.relative_to(MKDOCS_DOCS_DIR).as_posix() for f in MKDOCS_DOCS_DIR.rglob("*.md")]
    if 'index.md' in current_docs_files and 'index.md' not in final_md_files_for_mkdocs:
        final_md_files_for_mkdocs.insert(0, 'index.md')
    final_md_files_for_mkdocs = sorted(list(set(final_md_files_for_mkdocs)), key=lambda x: (x != 'index.md', x))

    mkdocs_config['nav'] = build_nested_nav(final_md_files_for_mkdocs, MKDOCS_DOCS_DIR)

    # Write mkdocs.yml
    try:
        if HAS_YAML:
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f:
                yaml.dump(mkdocs_config, f, sort_keys=False, default_flow_style=False, allow_unicode=True, width=1000)
            logging.info(f"Generated mkdocs.yml using PyYAML at {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")
        else:
            # Fallback to JSON if PyYAML is not available
            with open(mkdocs_yml_path, "w", encoding="utf-8") as f:
                json.dump(mkdocs_config, f, indent=2)
            logging.warning(f"Generated mkdocs.yml as JSON (PyYAML not found) at {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")
    except Exception as e:
        logging.error(f"Error writing mkdocs.yml: {e}")

    logging.info(f"\nBuild script finished.")
    if not run_agda_html:
         logging.info(f"Primary output for Shake/Agda: {AGDA_SNAPSHOT_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Final source for MkDocs build/serve: {MKDOCS_SRC_DIR.relative_to(PROJECT_ROOT)}")
    logging.info(f"Full log saved to: {LOG_FILE.relative_to(PROJECT_ROOT)}")
    logging.info(f"To serve the site locally: mkdocs serve --config-file {mkdocs_yml_path.relative_to(PROJECT_ROOT)}")

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
