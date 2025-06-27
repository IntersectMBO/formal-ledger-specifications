# modules/config_generation.py
"""
Functional configuration generation for the documentation pipeline.

Handles the creation of mkdocs.yml and other site generator configs.
"""
import logging
import json
from pathlib import Path
from typing import List, Dict, Any

try:
    import yaml
    HAS_YAML = True
except ImportError:
    HAS_YAML = False

from config.build_config import BuildConfig, SiteConfig
from utils.pipeline_types import Result, PipelineError, ErrorType

def _build_nav_tree(flat_files: List[str]) -> Dict[str, Any]:
    """Pure function: builds a nested dictionary representing nav structure."""
    nav_tree = {}
    for filename in flat_files:
        if filename.lower() == "index.md":
            continue

        parts = Path(filename).stem.split('.')
        page_title = parts[-1]
        section_path = parts[:-1]

        current_level = nav_tree
        for section in section_path:
            current_level = current_level.setdefault(section, {})
        current_level[page_title] = filename
    return nav_tree

def _format_nav_list(tree: Dict[str, Any]) -> List[Dict[str, Any]]:
    """Pure function: converts the dictionary tree to MkDocs list format."""
    nav_list = []
    for title, content in sorted(tree.items()):
        if isinstance(content, dict):
            nav_list.append({title: _format_nav_list(content)})
        else:
            nav_list.append({title: content})
    return nav_list

def generate_mkdocs_nav(nav_files: List[str]) -> List[Dict[str, Any]]:
    """Builds a mkdocs navigation structure from a flat list of .md files."""
    home_file = "index.md"
    other_files = [f for f in nav_files if f.lower() != home_file]

    nav_tree = _build_nav_tree(other_files)
    nav_list = [{"Home": home_file}] + _format_nav_list(nav_tree)

    return nav_list

def generate_mkdocs_config(
    config: BuildConfig,
    nav_files: List[str]
) -> Result[Path, PipelineError]:
    """
    Generates the final mkdocs.yml file by merging a base template
    with dynamically generated navigation.
    """
    logging.info("🏗️  Generating final mkdocs.yml...")

    mkdocs_yml_target = config.build_paths.mkdocs_build_dir / "mkdocs.yml"
    base_config_path = config.source_paths.mkdocs_static_dir / "mkdocs.yml"
    nav_template_path = config.source_paths.mkdocs_nav_yml_path

    try:
        # 1. Load the base mkdocs.yml template as the foundation.
        if base_config_path.exists() and HAS_YAML:
            mkdocs_conf = yaml.safe_load(base_config_path.read_text("utf-8")) or {}
            logging.info(f"  Loaded base config from template: {base_config_path.name}")
        else:
            # Fallback if the main template is missing
            mkdocs_conf = {"theme": {"name": "material"}}
            logging.warning("Base mkdocs.yml template not found. Using minimal defaults.")

        # 2. Determine the navigation structure.
        nav_structure = None
        if nav_template_path.exists() and HAS_YAML:
            # Prioritize the nav.yml template if it exists.
            logging.info(f"  Loading navigation from template: {nav_template_path.name}")
            nav_structure = yaml.safe_load(nav_template_path.read_text('utf-8'))

        if not isinstance(nav_structure, list):
            # If nav.yml doesn't exist, is empty, or invalid, generate nav dynamically.
            logging.info("  Generating navigation from file list (fallback).")
            nav_structure = generate_mkdocs_nav(nav_files)

        # 3. Inject the final navigation into the configuration.
        mkdocs_conf['nav'] = nav_structure

        # 4. Ensure dynamic CSS/JS from config are present without duplicating.
        # This merges the lists from the template and the build config.
        # Note: Your template already has the correct CDN links, so the dynamic
        # list in build_config.py should ideally be empty or only contain
        # files generated during the build (like Agda.css).

        # Ensure 'extra_css' is a list
        if 'extra_css' not in mkdocs_conf: mkdocs_conf['extra_css'] = []
        for css_file in config.site_config.dynamic_css_files:
            if css_file not in mkdocs_conf['extra_css']:
                mkdocs_conf['extra_css'].append(css_file)

        # Ensure 'extra_javascript' is a list
        if 'extra_javascript' not in mkdocs_conf: mkdocs_conf['extra_javascript'] = []
        for js_file in config.site_config.dynamic_js_files:
            if js_file not in mkdocs_conf['extra_javascript']:
                mkdocs_conf['extra_javascript'].append(js_file)

        # 5. Write the final, merged configuration file.
        if HAS_YAML:
            mkdocs_yml_target.write_text(
                yaml.dump(mkdocs_conf, sort_keys=False, allow_unicode=True, indent=2),
                encoding='utf-8'
            )
        else:
            # Fallback if PyYAML is not installed
            mkdocs_yml_target.write_text(json.dumps(mkdocs_conf, indent=2), encoding='utf-8')

        logging.info(f"✅ Successfully generated {mkdocs_yml_target.name}")
        return Result.ok(mkdocs_yml_target)

    except Exception as e:
        return Result.err(PipelineError(
            ErrorType.COMMAND_FAILED, "Failed to generate mkdocs.yml", cause=e
        ))
