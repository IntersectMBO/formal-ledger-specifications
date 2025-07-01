# build.py
"""
Main build orchestrator for the Formal Ledger Specifications documentation.

This script serves as the entry point for the build pipeline, transforming
literate Agda source files (.agda, .lagda.md) into a complete MkDocs static site.

The pipeline is composed of several high-level functional stages:
1.  **Configuration & Setup**: An immutable BuildConfig object is created,
    and the entire build directory structure is prepared.
2.  **Asset Generation**: Helper assets like 'macros.json' are created.
3.  **Agda Processing**: Source files are snapshotted, and non-literate
    `.agda` files are converted to `.lagda.md` format.
4.  **LaTeX Processing**: Literate `.lagda` files are processed through a
    complex sub-pipeline involving LaTeX-to-Markdown conversion,
    bibliography handling, and cross-reference mapping.
5.  **Site Assembly**: The processed Markdown files are staged. Static assets
    (CSS, JS, images) and the final mkdocs.yml configuration are generated
    and copied into the final site source directory (_build/md/mkdocs).

The orchestration logic is primarily contained in `main()`, which calls
specialized functions from the `modules/` directory for each major stage.
"""
import sys
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

# Add path for our modules
SCRIPTS_MD_DIR = Path(__file__).parent
sys.path.insert(0, str(SCRIPTS_MD_DIR))

from config.build_config import load_build_config, BuildConfig
from modules.setup import setup_build_environment, cleanup_intermediate_artifacts
from modules.agda_processing import process_agda_source_files
from modules.latex_pipeline import latex_pipeline_stage
from modules.asset_generator import generate_macros_json, generate_custom_css_from_agda
from utils.command_runner import run_command

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

    processed_filenames = [Path(p_str).name for p_str in flat_file_paths_str_list]
    unique_filenames = sorted(
        list(set(processed_filenames)),
        key=lambda f: (f.lower() != home_filename.lower(), f.lower())
    )

    actual_home_file_for_nav = None
    for filename_str in unique_filenames:
        if filename_str.lower() == home_filename.lower():
            actual_home_file_for_nav = filename_str
            continue

        name_parts = Path(filename_str).stem.split('.')
        page_title_str = name_parts[-1]
        section_path_parts = name_parts[:-1]
        current_level_dict = nav_tree

        for section_name_raw in section_path_parts:
            if section_name_raw not in current_level_dict:
                current_level_dict[section_name_raw] = {}
            current_level_dict = current_level_dict[section_name_raw]

        current_level_dict[page_title_str] = filename_str

    def format_nav_subtree(subtree_dict: Dict[str, Any]) -> List[Dict[str, Any]]:
        nav_list_segment = []
        # Sort items by key (title) for consistent navigation order
        for title, content in sorted(subtree_dict.items()):
            if isinstance(content, dict):
                nav_list_segment.append({title: format_nav_subtree(content)})
            else:
                nav_list_segment.append({title: content})
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
) -> Optional[str]:
    """
    Calculates the flat MD filename for a snapshot file, copies the snapshot
    file to the target docs directory with that flat name.
    Returns the flat filename string (e.g., "Module.File.md") if successful, else None.
    """
    try:
        relative_path = lagda_md_file_in_snapshot.relative_to(snapshot_root_dir)
        parts = list(relative_path.parent.parts)
        stem = relative_path.with_suffix('').stem
        if not parts:
            module_name_flat = stem
        else:
            if stem.lower() != "index":
                parts.append(stem)
            module_name_flat = ".".join(parts)

        final_flat_filename = f"{module_name_flat}.md"
        target_full_path = target_docs_dir / final_flat_filename
        target_full_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(lagda_md_file_in_snapshot, target_full_path)
        return final_flat_filename
    except Exception as e:
        logging.error(f"❌ Failed to copy/rename snapshot file {lagda_md_file_in_snapshot.name}: {e}", exc_info=True)
        return None


def generate_and_save_macros_json(
    macros_json_target_path: Path,
    macros_sty_source: Path
) -> Path:
    """
    Ensures macros.json exists, generating it if necessary.
    """
    logging.info(f"Checking for {macros_json_target_path.name}...")
    if not macros_sty_source.exists():
        if not macros_json_target_path.exists():
            logging.error(f"❌ {macros_json_target_path.name} not found and cannot be generated "
                          f"because source {macros_sty_source.name} is missing. Exiting.")
            sys.exit(1)
        else:
            logging.warning(f"Using existing {macros_json_target_path.name}, but its source is missing.")
            return macros_json_target_path

    # Regenerate if target doesn't exist or is older than the source .sty file
    if not macros_json_target_path.exists() or macros_sty_source.stat().st_mtime > macros_json_target_path.stat().st_mtime:
        logging.info(f"🏗️  Generating {macros_json_target_path.name} from {macros_sty_source.name}...")
        try:
            sty_content = macros_sty_source.read_text(encoding='utf-8')
            json_content = generate_macros_json(sty_content)
            macros_json_target_path.write_text(json_content, encoding='utf-8')
            logging.info(f"✅ Successfully generated {macros_json_target_path.name}.")
        except Exception as e:
            logging.error(f"❌ Failed to generate {macros_json_target_path.name}: {e}", exc_info=True)
            sys.exit(1)
    else:
        logging.info(f"Using existing and up-to-date {macros_json_target_path.name}.")

    return macros_json_target_path


def populate_agda_docs_staging(
    config: BuildConfig,
    all_snapshot_lagda_md_files: List[Path]
) -> List[Path]:
    """
    Populates the _build/md/md.pp/ staging directory.
    If run_agda_html_flag is True, runs `agda --html`.
    Otherwise, copies files from snapshot, renaming them to flat "ModuleName.md" format.
    Returns a list of Path objects for the final .md files in agda_docs_staging_dir.
    """
    agda_docs_staging_dir = config.build_paths.build_md_pp_dir
    run_agda_html_flag = config.run_agda_html
    project_root = config.source_paths.project_root
    agda_snapshot_src_dir = config.build_paths.agda_snapshot_src_dir

    logging.info(f"\n--- 🏗️  Populating Agda docs staging directory: {agda_docs_staging_dir.relative_to(project_root)} ---")
    agda_docs_staging_dir.mkdir(parents=True, exist_ok=True)
    final_md_files_in_staging: List[Path] = []

    if run_agda_html_flag:
        logging.info(f"Running Agda --html, outputting directly to {agda_docs_staging_dir}...")
        agda_command = [
            "agda", "--fls",
            f"--fls-html-dir={agda_docs_staging_dir.resolve()}",
            config.agda_config.main_file
        ]
        agda_result = run_command(agda_command, cwd=agda_snapshot_src_dir.resolve(), stream_output=True)

        if agda_result.is_ok:
            logging.info(f"✅ Agda --html command completed.")
        else:
            logging.error(f"❌ Agda --html command failed: {agda_result.unwrap_err().message}")
            logging.warning("   Falling back to copying snapshot files without Agda HTML highlighting.")
            run_agda_html_flag = False

    if not run_agda_html_flag:
        logging.info(f"Copying processed .lagda.md files to staging with flat names...")
        for lagda_md_file in all_snapshot_lagda_md_files:
            flat_filename = copy_snapshot_file_with_flat_name(
                lagda_md_file, agda_snapshot_src_dir, agda_docs_staging_dir
            )
            if flat_filename:
                final_md_files_in_staging.append(agda_docs_staging_dir / flat_filename)

    # After running Agda or copying, collect all .md files in the staging dir
    if agda_docs_staging_dir.exists():
        final_md_files_in_staging = sorted(list(agda_docs_staging_dir.glob("*.md")))

    logging.info(f"✅ Populated staging directory with {len(final_md_files_in_staging)} file(s).")
    return final_md_files_in_staging


def copy_staging_to_site_docs(
    config: BuildConfig,
    site_name: str
) -> List[str]:
    """
    Copies contents of the staging directory to the target site docs directory.
    """
    agda_docs_staging_dir = config.build_paths.build_md_pp_dir
    if site_name == "MkDocs":
        target_site_docs_dir = config.build_paths.mkdocs_docs_dir
    # Add MdBook logic here if needed
    # elif site_name == "MdBook":
    #     target_site_docs_dir = config.build_paths.mdbook_docs_dir
    else:
        return []

    logging.info(f"\n--- 🏗️  Populating {site_name} site from {agda_docs_staging_dir.name} ---")
    if not agda_docs_staging_dir.exists():
        logging.warning(f"Staging directory does not exist. No files to copy for {site_name}.")
        return []

    try:
        shutil.copytree(agda_docs_staging_dir, target_site_docs_dir, dirs_exist_ok=True)
        copied_md_filenames = [item.name for item in target_site_docs_dir.glob("*.md")]
        logging.info(f"✅ Found {len(copied_md_filenames)} .md files in {target_site_docs_dir.name} for navigation.")
        return sorted(copied_md_filenames)
    except Exception as e:
        logging.error(f"❌ Failed to copy directory for {site_name}: {e}", exc_info=True)
        return []


def deploy_static_mkdocs_assets(config: BuildConfig, current_nav_files: List[str]) -> List[str]:
    """Copies static assets like CSS, JS, and index.md to the MkDocs source folder."""
    logging.info("\n--- 🏗️  Assembling static assets for MkDocs site ---")
    mkdocs_docs_dir = config.build_paths.mkdocs_docs_dir
    mkdocs_js_dir = config.build_paths.mkdocs_js_dir
    updated_nav_files = list(current_nav_files)

    # Copy Custom JS
    if config.source_paths.custom_js_path.exists():
        shutil.copy2(config.source_paths.custom_js_path, mkdocs_js_dir)

    # Copy KaTeX JS
    if config.source_paths.katex_js_path.exists():
        shutil.copy2(config.source_paths.katex_js_path, mkdocs_js_dir)

    # Handle index.md (only if not already generated by Agda processing)
    home_page_filename = "index.md"
    if not any(f.lower() == home_page_filename.lower() for f in updated_nav_files):
        index_template = config.source_paths.mkdocs_static_docs_dir / home_page_filename
        if index_template.exists():
            shutil.copy2(index_template, mkdocs_docs_dir)
            if home_page_filename not in updated_nav_files:
                updated_nav_files.append(home_page_filename)

    return sorted(list(set(updated_nav_files)), key=lambda f: (f.lower() != home_page_filename.lower(), f.lower()))


def generate_mkdocs_config(config: BuildConfig, nav_files: List[str]):
    """Generates the final mkdocs.yml configuration file."""
    logging.info("\n--- 🏗️  Finalizing mkdocs.yml configuration ---")
    mkdocs_yml_template_path = config.build_paths.mkdocs_src_dir / "mkdocs.yml"
    mkdocs_yml_target_path = mkdocs_yml_template_path

    mkdocs_config: Dict[str, Any] = {}
    if mkdocs_yml_template_path.exists() and HAS_YAML:
        with open(mkdocs_yml_template_path, 'r', encoding='utf-8') as f:
            mkdocs_config = yaml.safe_load(f) or {}

    # Update dynamic values
    mkdocs_config['site_name'] = config.site_config.site_name
    mkdocs_config['site_url'] = config.site_config.site_url
    mkdocs_config['extra_css'] = list(config.site_config.dynamic_css_files)
    mkdocs_config['extra_javascript'] = list(config.site_config.dynamic_js_files)

    # Build navigation
    nav_template_path = config.source_paths.mkdocs_nav_yml_path
    if nav_template_path.exists() and HAS_YAML:
        logging.info(f"Loading navigation structure from {nav_template_path.name}.")
        with open(nav_template_path, 'r', encoding='utf-8') as f_nav:
            mkdocs_config['nav'] = yaml.safe_load(f_nav)
    else:
        logging.info("Generating navigation from processed files.")
        mkdocs_config['nav'] = build_nav_from_flat_files(nav_files)

    # Write final config
    with open(mkdocs_yml_target_path, "w", encoding="utf-8") as f_yml:
        if HAS_YAML:
            yaml.dump(mkdocs_config, f_yml, sort_keys=False, allow_unicode=True)
        else:
            json.dump(mkdocs_config, f_yml, indent=2)
    logging.info(f"✅ Successfully wrote final configuration to {mkdocs_yml_target_path.name}.")


def deploy_bibliography_assets(config: BuildConfig) -> None:
    """Copies bibliography file to the includes directory for mkdocs-bibtex."""
    source_bib = config.source_paths.references_bib_path
    target_dir = config.build_paths.mkdocs_includes_dir
    if source_bib.exists():
        target_dir.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source_bib, target_dir)
        logging.info(f"✅ Copied bibliography: {source_bib.name} to {target_dir.name}/")


def main(run_agda_html_flag: bool = False) -> None:
    """Functional pipeline using mathematical composition where possible."""
    # STAGE 1: Load config and setup environment
    config = load_build_config(run_agda_html=run_agda_html_flag, mode="development")
    setup_result = setup_build_environment(config)
    if setup_result.is_err:
        logging.error(f"❌ Functional setup failed: {setup_result.unwrap_err()}")
        sys.exit(1)

    # STAGE 2: Generate macros.json
    macros_json_path = generate_and_save_macros_json(
        config.build_paths.macros_json_path,
        config.source_paths.macros_sty_path
    )

    # STAGE 3: Process Agda source files (.agda -> .lagda.md)
    agda_result = process_agda_source_files(config)
    if agda_result.is_err:
        logging.error(f"❌ Functional Agda processing failed: {agda_result.unwrap_err()}")
        sys.exit(1)
    processed_agda_files = agda_result.unwrap()

    # STAGE 4: Process LaTeX files (.lagda -> .lagda.md)
    latex_files = list(config.build_paths.agda_snapshot_src_dir.rglob("*.lagda"))
    if latex_files:
        latex_result = latex_pipeline_stage(latex_files, config)
        if latex_result.is_err:
            logging.error(f"❌ LaTeX processing failed: {latex_result.unwrap_err()}")
            sys.exit(1)

    # STAGE 5: Staging, Site Assembly, and Configuration
    all_snapshot_lagda_md_files = [f.current_path for f in processed_agda_files]
    staged_md_file_paths = populate_agda_docs_staging(config, all_snapshot_lagda_md_files)

    # Generate and Deploy CSS based on Agda output
    agda_css_path = config.build_paths.build_md_pp_dir / "Agda.css"
    if agda_css_path.exists():
        agda_css_content = agda_css_path.read_text(encoding='utf-8')
        template_css_content = config.source_paths.custom_css_path.read_text(encoding='utf-8')
        final_css = generate_custom_css_from_agda(agda_css_content, template_css_content)
        (config.build_paths.mkdocs_css_dir / "custom.css").write_text(final_css, encoding='utf-8')
        shutil.copy2(agda_css_path, config.build_paths.mkdocs_css_dir / "Agda.css")

    # Copy staged content and other assets
    nav_files_in_docs = copy_staging_to_site_docs(config, "MkDocs")
    final_nav_list = deploy_static_mkdocs_assets(config, nav_files_in_docs)
    deploy_bibliography_assets(config)

    # Generate final site configuration
    generate_mkdocs_config(config, final_nav_list)

    # STAGE 6: Cleanup
    if config.cleanup_intermediates:
        cleanup_intermediate_artifacts(config)

    logging.info("\n✅ Functional build completed successfully!")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build mkdocs site source from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run the 'agda --html' step on processed files for syntax highlighting."
    )
    args = parser.parse_args()

    try:
        main(run_agda_html_flag=args.run_agda)
    except Exception as e:
        logging.exception("❌ CRITICAL ERROR: Build failed due to an unhandled exception.")
        sys.exit(1)
    finally:
        logging.info("✅ Build script execution finished.")
        logging.shutdown()
