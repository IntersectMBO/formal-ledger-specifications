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
from modules.source_headers import ensure_source_header_file
from utils.command_runner import run_command
from utils.text_processing import get_flat_filename

def _copy_to_staging_with_flat_name(
    source_file: Path,
    snapshot_root: Path,
    staging_dir: Path
) -> Optional[str]:
    """Helper to calculate a flat filename and copy a file to staging."""
    try:
        relative_path = source_file.relative_to(snapshot_root)
        final_flat_filename = get_flat_filename(relative_path)

        target_path = staging_dir / final_flat_filename
        target_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source_file, target_path)
        return final_flat_filename
    except Exception as e:
        logging.error(f"❌ Failed to copy/rename snapshot file {source_file.name}: {e}", exc_info=True)
        return None


def _resolve_repo_source_for_flat(md_file: Path, src_dir: Path) -> str:
    """
    Given a staged flat filename (Ledger.Foo.Bar.md), choose the correct repo source path.
    It should be one of
      a. src/Ledger/Foo/Bar.lagda.md,
      b. src/Ledger/Foo/Bar.agda, or
      c. src/Ledger/Foo/Bar.lagda.
    Returns "src/…/<name>.<ext>" (string).
    """
    base = md_file.stem.replace(".", "/")
    candidates = [f"{base}.lagda.md", f"{base}.agda", f"{base}.lagda"]
    for rel in candidates:
        if (src_dir / rel).exists():
            return f"src/{rel}"
    # Fallback if file lives outside src/
    return f"src/{candidates[0]}"


def stage_content(config: BuildConfig, processed_files: List[Path]) -> List[Path]:
    """
    Populates the staging directory, running Agda if requested.
    Returns a list of paths to all Markdown files in the staging directory.
    """
    staging_dir = config.build_paths.build_md_pp_dir
    project_root = config.source_paths.project_root
    snapshot_dir = config.build_paths.agda_snapshot_src_dir
    run_agda = config.run_agda_html

    logging.info(f"🏗️  Populating content staging directory: {staging_dir.relative_to(project_root)}...")
    staging_dir.mkdir(parents=True, exist_ok=True)

    if run_agda:
        if config.test_mode:
            main_agda_file = config.agda_config.html_test_file
            logging.info(f"⚡ Running in TEST mode. Using Agda test file: {main_agda_file}")
        else:
            main_agda_file = config.agda_config.html_main_file

        logging.info(f"🐔 Running Agda --html on '{main_agda_file}', outputting to {staging_dir}...")
        agda_command = [
            "agda", "--fls",
            f"--fls-html-dir={staging_dir.resolve()}",
            main_agda_file
        ]
        result = run_command(agda_command, cwd=snapshot_dir.resolve(), stream_output=True)
        if result.is_err:
            logging.error(f"❌ Agda --html command failed: {result.unwrap_err().message}")
            run_agda = False

    if not run_agda:
        logging.info(f"♻️  Copying processed files to staging with flat names...")
        for file_path in processed_files:
            _copy_to_staging_with_flat_name(file_path, snapshot_dir, staging_dir)

    staged_files = sorted(list(staging_dir.glob("*.md")))
    logging.info(f"✅ Staging complete. Found {len(staged_files)} files.")

    # ⬇️ Ensure each staged file has a correct source_path header
    src_dir = config.source_paths.src_dir
    for md in staged_files:
        ensure_source_header_file(
            md,
            source_path=_resolve_repo_source_for_flat(md, src_dir),
            source_branch="master"
        )

    return staged_files
