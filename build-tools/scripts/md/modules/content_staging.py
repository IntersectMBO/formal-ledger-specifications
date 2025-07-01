# modules/content_staging.py
"""
Handles the content staging phase of the pipeline.

This includes running the Agda HTML generator and copying processed
files into a flat staging directory in preparation for site assembly.
"""
import logging
import shutil
from pathlib import Path
from typing import List, Optional

current_dir = Path(__file__).parent.parent
if str(current_dir) not in __import__('sys').path:
    __import__('sys').path.insert(0, str(current_dir))

from config.build_config import BuildConfig
from utils.command_runner import run_command

def _copy_to_staging_with_flat_name(
    source_file: Path,
    snapshot_root: Path,
    staging_dir: Path
) -> Optional[str]:
    """Helper to calculate a flat filename and copy a file to staging."""
    try:
        relative_path = source_file.relative_to(snapshot_root)
        parts = list(relative_path.parent.parts)
        # Remove the .lagda suffix before getting the stem
        stem = source_file.name.replace(".lagda.md", "").replace(".md", "")

        module_name_flat = ".".join(parts + [stem]) if parts and stem.lower() != "index" else ".".join(parts) or stem

        final_flat_filename = f"{module_name_flat}.md"
        target_path = staging_dir / final_flat_filename
        target_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source_file, target_path)
        return final_flat_filename
    except Exception as e:
        logging.error(f"❌ Failed to copy/rename snapshot file {source_file.name}: {e}", exc_info=True)
        return None

def stage_content(config: BuildConfig, processed_files: List[Path]) -> List[Path]:
    """
    Populates the staging directory, running Agda if requested.
    Returns a list of paths to all Markdown files in the staging directory.
    """
    staging_dir = config.build_paths.build_md_pp_dir
    project_root = config.source_paths.project_root
    snapshot_dir = config.build_paths.agda_snapshot_src_dir
    run_agda = config.run_agda_html

    logging.info(f"\n--- 🏗️  Populating content staging directory: {staging_dir.relative_to(project_root)} ---")
    staging_dir.mkdir(parents=True, exist_ok=True)

    if run_agda:
        logging.info(f"Running Agda --html, outputting to {staging_dir}...")
        agda_command = [
            "agda", "--fls",
            f"--fls-html-dir={staging_dir.resolve()}",
            config.agda_config.main_file
        ]
        result = run_command(agda_command, cwd=snapshot_dir.resolve(), stream_output=True)
        if result.is_err:
            logging.error(f"❌ Agda --html command failed: {result.unwrap_err().message}")
            run_agda = False

    if not run_agda:
        logging.info(f"Copying processed files to staging with flat names...")
        for file_path in processed_files:
            _copy_to_staging_with_flat_name(file_path, snapshot_dir, staging_dir)

    staged_files = sorted(list(staging_dir.glob("*.md")))
    logging.info(f"✅ Staging complete. Found {len(staged_files)} files.")
    return staged_files
