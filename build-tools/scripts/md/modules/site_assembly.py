# modules/site_assembly.py
"""
Functional site assembly stage for the documentation pipeline.

Handles the deployment of static assets (CSS, JS, images, etc.)
to the final site build directories.
"""
import logging
import shutil
import sys
from pathlib import Path
from typing import List, Dict
try:
    from config.build_config import BuildConfig
    from utils.pipeline_types import Result, PipelineError, ErrorType
    from utils.command_runner import run_command
except ImportError as e:
    print(f"WARNING: Could not import modules: {e}", file=sys.stderr)

def deploy_mkdocs_assets(
    config: BuildConfig,
    nav_files: List[str]
) -> Result[List[str], PipelineError]:
    """
    Copies all necessary static assets to the MkDocs source directory.

    This includes:
    - Agda.css (if needed)
    - custom.css (from a template)
    - custom.js
    - KaTeX configuration
    - The main index.md file
    - The bibliography .bib file

    Returns:
        Result[List[str], PipelineError]: A list of all markdown files that
                                          should be included in the navigation,
                                          including a newly copied index.md if applicable.
    """
    logging.info("🏗️  Assembling static assets for MkDocs site...")
    try:
        docs_dir = config.build_paths.mkdocs_docs_dir
        css_dir = config.build_paths.mkdocs_css_dir
        js_dir = config.build_paths.mkdocs_js_dir

        assets_to_copy: Dict[Path, Path] = {}

        # 1. Agda.css (if Agda HTML was run)
        agda_css_in_staging = config.build_paths.build_md_pp_dir / "Agda.css"
        if config.run_agda_html and agda_css_in_staging.exists():
            assets_to_copy[agda_css_in_staging] = css_dir / "Agda.css"

        # ~2. Custom CSS (always copy the template)~
        # This step is now handled by `generate_and_deploy_custom_css`.

        # 3. Custom JS
        assets_to_copy[config.source_paths.custom_js_path] = js_dir / "custom.js"

        # 4. KaTeX configuration
        assets_to_copy[config.source_paths.katex_js_path] = js_dir / "katex-config.js"

        # 5. Bibliography file
        bib_target = config.build_paths.mkdocs_includes_dir / config.source_paths.references_bib_path.name
        assets_to_copy[config.source_paths.references_bib_path] = bib_target

        # 6. Index page (if not already generated)
        updated_nav_files = list(nav_files)
        home_page_filename = "index.md"
        if not any(f.lower() == home_page_filename for f in updated_nav_files):
            index_template = config.source_paths.mkdocs_static_docs_dir / home_page_filename
            assets_to_copy[index_template] = docs_dir / home_page_filename
            updated_nav_files.append(home_page_filename)

        # Perform all copy operations
        for src, dest in assets_to_copy.items():
            if not src.exists():
                logging.warning(f"Asset source file not found, skipping: {src}")
                continue
            try:
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dest)
                logging.debug(f"  Copied asset {src.name} to {dest}")
            except Exception as e:
                return Result.err(PipelineError(
                    ErrorType.COMMAND_FAILED, f"Failed to copy asset {src}", cause=e
                ))

        logging.info(f"✅ Deployed {len(assets_to_copy)} static assets.")
        return Result.ok(sorted(list(set(updated_nav_files))))

    except Exception as e:
        return Result.err(PipelineError(
            ErrorType.COMMAND_FAILED, "An unexpected error occurred during asset deployment.", cause=e
        ))

def generate_and_deploy_custom_css(config: BuildConfig) -> Result[Path, PipelineError]:
    """
    Generates the custom.css file and deploys it.

    If run_agda_html is true, it runs the generation script to extract colors
    from Agda.css. Otherwise, it just copies the base custom.css template.
    """
    logging.info("🎨 Generating and deploying custom.css...")

    agda_css_path = config.build_paths.build_md_pp_dir / "Agda.css"
    output_css_path = config.build_paths.mkdocs_css_dir / "custom.css"
    template_css_path = config.source_paths.custom_css_path

    # Ensure the target directory exists
    output_css_path.parent.mkdir(parents=True, exist_ok=True)

    if config.run_agda_html and agda_css_path.exists():
        # Run the generation script
        generator_script = config.source_paths.md_scripts_dir / "generate_custom_css_from_agda_css.py"
        command = [
            sys.executable,  # Use the same python interpreter that's running the build
            str(generator_script),
            str(agda_css_path),
            str(output_css_path),
            str(template_css_path)
        ]

        result = run_command(command)
        if result.is_err:
            error = result.unwrap_err()
            logging.error(f"Failed to generate custom.css from Agda.css: {error.message}")
            # As a fallback, just copy the template
            shutil.copy2(template_css_path, output_css_path)
            return Result.err(error)

        logging.info("✅ Successfully generated custom.css with Agda color mappings.")
        return Result.ok(output_css_path)

    else:
        # If not running Agda, or Agda.css is missing, just copy the template
        if not config.run_agda_html:
            logging.info("  Skipping Agda color extraction (run_agda_html=False).")
        else:
            logging.warning(f"  Agda.css not found at {agda_css_path}. Cannot extract colors.")

        shutil.copy2(template_css_path, output_css_path)
        logging.info(f"✅ Deployed base custom.css from template.")
        return Result.ok(output_css_path)
