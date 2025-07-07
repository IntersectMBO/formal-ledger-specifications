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
import logging
import argparse
from pathlib import Path

# Add path for our modules
SCRIPTS_MD_DIR = Path(__file__).parent
sys.path.insert(0, str(SCRIPTS_MD_DIR))

from config.build_config import load_build_config
from modules.setup import setup_build_environment, cleanup_intermediate_artifacts
from modules.agda_processing import process_agda_source_files
from modules.latex_pipeline import latex_pipeline_stage
from modules.content_staging import stage_content
from modules.site_assembly import (
    generate_macros_json,
    copy_staged_to_mkdocs,
    deploy_mkdocs_assets,
    generate_mkdocs_config
)

def main(run_agda_html_flag: bool = False, test_mode_flag: bool = False) -> None:
    """High-level pipeline orchestration."""
    # 1. Load config and setup environment
    config = load_build_config(
        run_agda_html=run_agda_html_flag,
        test_mode=test_mode_flag
    )
    setup_result = setup_build_environment(config)
    if setup_result.is_err:
        logging.error(f"❌ Setup failed: {setup_result.unwrap_err()}")
        sys.exit(1)

    # 2. Generate intermediate assets
    sty_content = config.source_paths.macros_sty_path.read_text('utf-8')
    json_content = generate_macros_json(sty_content)
    config.build_paths.macros_json_path.write_text(json_content, 'utf-8')

    # 3. Process Agda source files (.agda -> .lagda.md)
    agda_result = process_agda_source_files(config)
    if agda_result.is_err:
        logging.error(f"❌ Agda processing failed: {agda_result.unwrap_err()}")
        sys.exit(1)

    # 4. Process LaTeX files (.lagda -> .lagda.md)
    latex_files = list(config.build_paths.agda_snapshot_src_dir.rglob("*.lagda"))
    if latex_files:
        latex_result = latex_pipeline_stage(latex_files, config)
        if latex_result.is_err:
            logging.error(f"❌ LaTeX processing failed: {latex_result.unwrap_err()}")
            sys.exit(1)

    # 5. Stage content for site generation
    all_processed_files = [f.current_path for f in agda_result.unwrap()]
    stage_content(config, all_processed_files)

    # 6. Assemble the MkDocs site
    nav_files = copy_staged_to_mkdocs(config)
    final_nav_files = deploy_mkdocs_assets(config, nav_files)
    generate_mkdocs_config(config, final_nav_files)

    # 7. Cleanup
    if config.cleanup_intermediates:
        cleanup_intermediate_artifacts(config)

    logging.info("\n✅ Build completed successfully!")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build documentation from literate Agda files.")
    parser.add_argument(
        '--run-agda',
        action='store_true',
        help="Run 'agda --html' for syntax highlighting."
    )
    parser.add_argument(
        '--test',
        action='store_true',
        help="Run in test mode using a smaller Agda file for HTML generation."
    )
    args = parser.parse_args()

    try:
        main(run_agda_html_flag=args.run_agda, test_mode_flag=args.test)
    except Exception as e:
        logging.exception("❌ CRITICAL ERROR: Build failed.")
        sys.exit(1)
    finally:
        logging.info("✅ Build script execution finished.")
        logging.shutdown()
