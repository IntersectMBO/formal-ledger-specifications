# build-tools/scripts/md/config/build_config.py
"""
Centralized configuration for the documentation build pipeline.

This module provides immutable, type-safe configuration objects that
define all paths, settings, and dependencies for the build process.

Design principles:
- Immutable dataclasses for predictable behavior
- Comprehensive typing for early error detection
- Single source of truth for all configuration
- Environment-aware configuration loading
"""

from __future__ import annotations
from dataclasses import dataclass, replace as dataclass_replace
from pathlib import Path
from typing import List, Dict, Optional, Literal, Tuple
import os

# Type aliases for clarity
BuildMode = Literal["development", "ci", "docs"]
AgdaBackend = Literal["html", "latex", "markdown"]


@dataclass(frozen=True)
class SourcePaths:
    """Immutable paths to source files and directories."""

    # Project structure
    project_root: Path
    src_dir: Path
    lib_exts_dir: Path
    build_tools_dir: Path

    # Build tools subdirectories
    scripts_dir: Path
    md_scripts_dir: Path
    static_dir: Path

    # Static content directories
    latex_static_dir: Path
    md_static_dir: Path
    md_static_common_dir: Path
    md_static_common_src_dir: Path

    # MkDocs static structure
    mkdocs_static_dir: Path
    mkdocs_static_src_dir: Path
    mkdocs_static_docs_dir: Path

    # MdBook static structure
    mdbook_static_dir: Path
    mdbook_static_src_dir: Path

    # Key input files
    macros_sty_path: Path
    references_bib_path: Path

    # CSS and JS assets
    md_static_css_dir: Path
    md_static_js_dir: Path
    custom_css_path: Path
    custom_js_path: Path
    katex_js_path: Path

    # Navigation templates
    mkdocs_nav_yml_path: Path
    mdbook_summary_md_path: Path

    @classmethod
    def from_project_root(cls, project_root: Path) -> SourcePaths:
        """Construct SourcePaths from project root directory."""

        # Validate project root
        if not project_root.is_dir():
            raise ValueError(f"Project root does not exist: {project_root}")

        # Core directories
        src_dir = project_root / "src"
        lib_exts_dir = project_root / "src-lib-exts"
        build_tools_dir = project_root / "build-tools"

        # Build tools structure
        scripts_dir = build_tools_dir / "scripts"
        md_scripts_dir = scripts_dir / "md"
        static_dir = build_tools_dir / "static"

        # Static content
        latex_static_dir = static_dir / "latex"
        md_static_dir = static_dir / "md"
        md_static_common_dir = md_static_dir / "common"
        md_static_common_src_dir = md_static_common_dir / "src"

        # MkDocs static
        mkdocs_static_dir = md_static_dir / "mkdocs"
        mkdocs_static_src_dir = mkdocs_static_dir
        mkdocs_static_docs_dir = mkdocs_static_src_dir / "docs"

        # MdBook static
        mdbook_static_dir = md_static_dir / "mdbook"
        mdbook_static_src_dir = mdbook_static_dir / "src"

        # Key files
        macros_sty_path = latex_static_dir / "macros.sty"
        references_bib_path = latex_static_dir / "references.bib"

        # Assets
        md_static_css_dir = md_static_common_src_dir / "css"
        md_static_js_dir = md_static_common_src_dir / "js"
        custom_css_path = md_static_css_dir / "custom.css"
        custom_js_path = md_static_js_dir / "custom.js"
        katex_js_path = md_static_js_dir / "katex-config.js"

        # Navigation
        mkdocs_nav_yml_path = md_static_common_dir / "nav.yml"
        mdbook_summary_md_path = mdbook_static_src_dir / "SUMMARY.md"

        return cls(
            project_root=project_root,
            src_dir=src_dir,
            lib_exts_dir=lib_exts_dir,
            build_tools_dir=build_tools_dir,
            scripts_dir=scripts_dir,
            md_scripts_dir=md_scripts_dir,
            static_dir=static_dir,
            latex_static_dir=latex_static_dir,
            md_static_dir=md_static_dir,
            md_static_common_dir=md_static_common_dir,
            md_static_common_src_dir=md_static_common_src_dir,
            mkdocs_static_dir=mkdocs_static_dir,
            mkdocs_static_src_dir=mkdocs_static_src_dir,
            mkdocs_static_docs_dir=mkdocs_static_docs_dir,
            mdbook_static_dir=mdbook_static_dir,
            mdbook_static_src_dir=mdbook_static_src_dir,
            macros_sty_path=macros_sty_path,
            references_bib_path=references_bib_path,
            md_static_css_dir=md_static_css_dir,
            md_static_js_dir=md_static_js_dir,
            custom_css_path=custom_css_path,
            custom_js_path=custom_js_path,
            katex_js_path=katex_js_path,
            mkdocs_nav_yml_path=mkdocs_nav_yml_path,
            mdbook_summary_md_path=mdbook_summary_md_path,
        )


@dataclass(frozen=True)
class BuildPaths:
    """Immutable paths for build outputs and intermediate files."""

    # Root build directories
    build_dir: Path
    build_md_dir: Path
    dist_dir: Path

    # Build stages
    build_md_in_dir: Path      # Processed source (.lagda.md files)
    build_md_pp_dir: Path      # Post-processed content
    build_md_aux_dir: Path     # Intermediate artifacts

    # Snapshot directories (inputs to Agda)
    agda_snapshot_src_dir: Path
    agda_snapshot_lib_exts_dir: Path

    # Pipeline intermediate directories
    temp_dir: Path                    # .lagda.temp files
    code_blocks_dir: Path             # code_blocks.json files
    intermediate_md_dir: Path         # .md.intermediate files

    # Site build directories
    mkdocs_build_dir: Path
    mkdocs_src_dir: Path
    mkdocs_docs_dir: Path
    mkdocs_css_dir: Path
    mkdocs_js_dir: Path
    mkdocs_includes_dir: Path

    mdbook_build_dir: Path
    mdbook_src_dir: Path
    mdbook_docs_dir: Path
    mdbook_css_dir: Path
    mdbook_js_dir: Path

    # Key intermediate files
    macros_json_path: Path
    agda_css_path: Path
    log_file_path: Path

    @classmethod
    def from_project_root(cls, project_root: Path) -> BuildPaths:
        """Construct BuildPaths from project root directory."""

        # Root directories
        build_dir = project_root / "_build"
        build_md_dir = build_dir / "md"
        dist_dir = project_root / "dist"

        # Build stages
        build_md_in_dir = build_md_dir / "md.in"
        build_md_pp_dir = build_md_dir / "md.pp"
        build_md_aux_dir = build_md_dir / "md.aux"

        # Snapshots
        agda_snapshot_src_dir = build_md_in_dir / "src"
        agda_snapshot_lib_exts_dir = build_md_in_dir / "src-lib-exts"

        # Pipeline intermediates
        temp_dir = build_md_aux_dir / "lagda_temp"
        code_blocks_dir = build_md_aux_dir / "code_blocks_json"
        intermediate_md_dir = build_md_aux_dir / "md_intermediate"

        # MkDocs site
        mkdocs_build_dir = build_md_dir / "mkdocs"
        mkdocs_src_dir = mkdocs_build_dir
        mkdocs_docs_dir = mkdocs_src_dir / "docs"
        mkdocs_css_dir = mkdocs_docs_dir / "css"
        mkdocs_js_dir = mkdocs_docs_dir / "js"
        mkdocs_includes_dir = mkdocs_build_dir / "includes"

        # MdBook site
        mdbook_build_dir = build_md_dir / "mdbook"
        mdbook_src_dir = mdbook_build_dir
        mdbook_docs_dir = mdbook_src_dir / "src"
        mdbook_css_dir = mdbook_docs_dir / "css"
        mdbook_js_dir = mdbook_docs_dir / "js"

        # Key files
        macros_json_path = build_md_aux_dir / "macros.json"
        agda_css_path = build_md_aux_dir / "Agda.css"
        log_file_path = build_md_aux_dir / "build.log"

        return cls(
            build_dir=build_dir,
            build_md_dir=build_md_dir,
            dist_dir=dist_dir,
            build_md_in_dir=build_md_in_dir,
            build_md_pp_dir=build_md_pp_dir,
            build_md_aux_dir=build_md_aux_dir,
            agda_snapshot_src_dir=agda_snapshot_src_dir,
            agda_snapshot_lib_exts_dir=agda_snapshot_lib_exts_dir,
            temp_dir=temp_dir,
            code_blocks_dir=code_blocks_dir,
            intermediate_md_dir=intermediate_md_dir,
            mkdocs_build_dir=mkdocs_build_dir,
            mkdocs_src_dir=mkdocs_src_dir,
            mkdocs_docs_dir=mkdocs_docs_dir,
            mkdocs_css_dir=mkdocs_css_dir,
            mkdocs_js_dir=mkdocs_js_dir,
            mkdocs_includes_dir=mkdocs_includes_dir,
            mdbook_build_dir=mdbook_build_dir,
            mdbook_src_dir=mdbook_src_dir,
            mdbook_docs_dir=mdbook_docs_dir,
            mdbook_css_dir=mdbook_css_dir,
            mdbook_js_dir=mdbook_js_dir,
            macros_json_path=macros_json_path,
            agda_css_path=agda_css_path,
            log_file_path=log_file_path,
        )


@dataclass(frozen=True)
class AgdaConfig:
    """Configuration for Agda processing."""

    # Library dependencies
    dependencies: Tuple[str, ...]

    # Processing options
    main_file: str  # e.g., "Ledger.lagda.md"
    generate_html: bool
    html_backend_flags: Tuple[str, ...]

    # Library file configuration
    lib_file_name: str

    @classmethod
    def default(cls) -> AgdaConfig:
        """Default Agda configuration."""
        return cls(
            dependencies=(
                "standard-library",
                "standard-library-classes",
                "standard-library-meta",
                "abstract-set-theory",
                "iog-prelude"
            ),
            main_file="Ledger.lagda.md",
            generate_html=True,
            html_backend_flags=(
                "--fls",
                "--fls-main-only"
            ),
            lib_file_name="formal-ledger.agda-lib"
        )


@dataclass(frozen=True)
class BibTeXConfig:
    """Configuration for bibliography processing."""

    # Citation style
    style: Literal["alpha", "numeric", "author-year"]

    # Output format
    bibliography_title: str
    link_citations: bool

    # Processing options
    sort_bibliography: bool
    abbreviate_first_names: bool

    @classmethod
    def default(cls) -> BibTeXConfig:
        """Default BibTeX configuration with alpha style."""
        return cls(
            style="alpha",
            bibliography_title="References",
            link_citations=True,
            sort_bibliography=True,
            abbreviate_first_names=True
        )


@dataclass(frozen=True)
class SiteConfig:
    """Configuration for site generation (MkDocs/MdBook)."""

    # Site metadata
    site_name: str
    site_description: str
    site_url: Optional[str]

    # Build options
    generate_mkdocs: bool
    generate_mdbook: bool

    # Asset handling
    dynamic_css_files: Tuple[str, ...]
    dynamic_js_files: Tuple[str, ...]

    @classmethod
    def default(cls) -> SiteConfig:
        """Default site configuration."""
        return cls(
            site_name="Formal Ledger Specification",
            site_description="Formal ledger specification and documentation.",
            site_url="https://intersectmbo.github.io/formal-ledger-specifications/",
            generate_mkdocs=True,
            generate_mdbook=False,  # Not yet fully supported
            dynamic_css_files=("css/Agda.css", "css/custom.css"),
            dynamic_js_files=("js/custom.js", "js/katex-config.js")
        )


@dataclass(frozen=True)
class BuildConfig:
    """Complete build configuration - the immutable single source of truth."""

    # Path configurations
    source_paths: SourcePaths
    build_paths: BuildPaths

    # Component configurations
    agda_config: AgdaConfig
    bibtex_config: BibTeXConfig
    site_config: SiteConfig

    # Build options
    mode: BuildMode
    run_agda_html: bool
    cleanup_intermediates: bool
    verbose_logging: bool

    @classmethod
    def create(
        cls,
        project_root: Optional[Path] = None,
        mode: BuildMode = "development",
        run_agda_html: bool = False,
        **overrides
    ) -> BuildConfig:
        """Create a complete build configuration.

        Args:
            project_root: Project root directory (auto-detected if None)
            mode: Build mode affecting defaults
            run_agda_html: Whether to run Agda HTML generation
            **overrides: Override specific configuration values

        Returns:
            Immutable BuildConfig with all paths and settings
        """

        # Auto-detect project root if not provided
        if project_root is None:
            # Assuming this file is in build-tools/scripts/md/config/
            current_file = Path(__file__).resolve()
            project_root = current_file.parent.parent.parent.parent.parent

        # Create path configurations
        source_paths = SourcePaths.from_project_root(project_root)
        build_paths = BuildPaths.from_project_root(project_root)

        # Create component configurations with mode-specific defaults
        agda_config = AgdaConfig.default()
        bibtex_config = BibTeXConfig.default()
        site_config = SiteConfig.default()

        # Mode-specific adjustments
        if mode == "ci":
            cleanup_intermediates = True
            verbose_logging = False
        elif mode == "development":
            cleanup_intermediates = False
            verbose_logging = True
        else:  # docs mode
            cleanup_intermediates = True
            verbose_logging = True

        return cls(
            source_paths=source_paths,
            build_paths=build_paths,
            agda_config=agda_config,
            bibtex_config=bibtex_config,
            site_config=site_config,
            mode=mode,
            run_agda_html=run_agda_html,
            cleanup_intermediates=cleanup_intermediates,
            verbose_logging=verbose_logging
        )

    def with_agda_html(self, enabled: bool) -> BuildConfig:
        """Return new config with Agda HTML generation enabled/disabled."""
        return dataclass_replace(self, run_agda_html=enabled)

    def for_mode(self, mode: BuildMode) -> BuildConfig:
        """Return new config adjusted for specific build mode."""
        return dataclass_replace(self, mode=mode)


# Convenience function for easy config creation
def load_build_config(
    run_agda_html: bool = False,
    mode: BuildMode = "development",
    project_root: Optional[Path] = None
) -> BuildConfig:
    """Load build configuration with common defaults.

    This is the main entry point for getting a build configuration.

    Args:
        run_agda_html: Whether to run Agda HTML generation
        mode: Build mode (development, ci, docs)
        project_root: Project root (auto-detected if None)

    Returns:
        Complete BuildConfig ready for use

    Example:
        config = load_build_config(run_agda_html=True, mode="docs")
        print(f"Building in {config.build_paths.build_dir}")
    """
    return BuildConfig.create(
        project_root=project_root,
        mode=mode,
        run_agda_html=run_agda_html
    )


# For backward compatibility and migration
def get_legacy_paths() -> Dict[str, Path]:
    """Get legacy path constants for gradual migration.

    This function provides the old path constants to ease migration
    from the monolithic build.py. Remove once migration is complete.
    """
    config = load_build_config()

    return {
        # Core project paths
        "PROJECT_ROOT": config.source_paths.project_root,
        "SRC_DIR": config.source_paths.src_dir,
        "LIB_EXTS_DIR": config.source_paths.lib_exts_dir,
        "BUILD_TOOLS": config.source_paths.build_tools_dir,

        # Build directories
        "BUILD_DIR": config.build_paths.build_dir,
        "BUILD_MD_DIR": config.build_paths.build_md_dir,
        "BUILD_MD_IN_DIR": config.build_paths.build_md_in_dir,
        "BUILD_MD_PP_DIR": config.build_paths.build_md_pp_dir,
        "BUILD_MD_AUX_DIR": config.build_paths.build_md_aux_dir,

        # Agda snapshots
        "AGDA_SNAPSHOT_SRC_DIR": config.build_paths.agda_snapshot_src_dir,
        "AGDA_SNAPSHOT_LIB_EXTS_DIR": config.build_paths.agda_snapshot_lib_exts_dir,

        # MkDocs site build directories
        "MKDOCS_BUILD_DIR": config.build_paths.mkdocs_build_dir,
        "MKDOCS_SRC_DIR": config.build_paths.mkdocs_src_dir,
        "MKDOCS_DOCS_DIR": config.build_paths.mkdocs_docs_dir,
        "MKDOCS_CSS_DIR": config.build_paths.mkdocs_css_dir,
        "MKDOCS_JS_DIR": config.build_paths.mkdocs_js_dir,
        "MKDOCS_INCLUDES_DIR": config.build_paths.mkdocs_includes_dir,

        # MdBook site build directories (MISSING - ADD THESE)
        "MDBOOK_BUILD_DIR": config.build_paths.mdbook_build_dir,
        "MDBOOK_SRC_DIR": config.build_paths.mdbook_src_dir,
        "MDBOOK_DOCS_DIR": config.build_paths.mdbook_docs_dir,
        "MDBOOK_CSS_DIR": config.build_paths.mdbook_css_dir,
        "MDBOOK_JS_DIR": config.build_paths.mdbook_js_dir,

        # Script paths
        "SCRIPTS_DIR": config.source_paths.scripts_dir,
        "MD_SCRIPTS_DIR": config.source_paths.md_scripts_dir,

        # Static content
        "STATIC_DIR": config.source_paths.static_dir,
        "LATEX_DIR": config.source_paths.latex_static_dir,
        "MD_STATIC_DIR": config.source_paths.md_static_dir,
        "MD_STATIC_COMMON_DIR": config.source_paths.md_static_common_dir,
        "MD_STATIC_COMMON_SRC_DIR": config.source_paths.md_static_common_src_dir,
        "MKDOCS_STATIC_DIR": config.source_paths.mkdocs_static_dir,
        "MKDOCS_STATIC_SRC_DIR": config.source_paths.mkdocs_static_src_dir,
        "MKDOCS_STATIC_DOCS_DIR": config.source_paths.mkdocs_static_docs_dir,

        # MdBook static paths (MISSING - ADD THESE)
        "MDBOOK_STATIC_DIR": config.source_paths.mdbook_static_dir,
        "MDBOOK_STATIC_SRC_DIR": config.source_paths.mdbook_static_src_dir,

        # Key files
        "MACROS_JSON": config.build_paths.macros_json_path,
        "LOG_FILE": config.build_paths.log_file_path,
        "MACROS_STY_PATH": config.source_paths.macros_sty_path,
        "REFS_STATIC_PATH": config.source_paths.references_bib_path,

        # CSS and JS
        "MD_STATIC_CSS_DIR": config.source_paths.md_static_css_dir,
        "MD_STATIC_JS_DIR": config.source_paths.md_static_js_dir,
        "MD_STATIC_CUSTOM_CSS_PATH": config.source_paths.custom_css_path,
        "MD_STATIC_CUSTOM_JS_PATH": config.source_paths.custom_js_path,
        "MD_STATIC_KATEX_JS_PATH": config.source_paths.katex_js_path,

        # Navigation
        "MKDOCS_STATIC_NAV_YML": config.source_paths.mkdocs_nav_yml_path,
        "MKDOCS_STATIC_INDEX": config.source_paths.mkdocs_static_docs_dir / "index.md",

        # MdBook navigation (MISSING - ADD THESE)
        "MDBOOK_SUMMARY_MD_TEMPLATE": config.source_paths.mdbook_summary_md_path,
        "MDBOOK_BOOK_TOML_TEMPLATE": config.source_paths.mdbook_static_dir / "book.toml",

        # Pipeline intermediate directories
        "TEMP_DIR": config.build_paths.temp_dir,
        "CODE_BLOCKS_DIR": config.build_paths.code_blocks_dir,
        "INTERMEDIATE_MD_DIR": config.build_paths.intermediate_md_dir,
    }

# Type checking helpers
if __name__ == "__main__":
    # Simple validation when run directly
    config = load_build_config()
    print(f"✅ Configuration loaded successfully")
    print(f"Project root: {config.source_paths.project_root}")
    print(f"Build directory: {config.build_paths.build_dir}")
    print(f"Mode: {config.mode}")
    print(f"Agda HTML: {config.run_agda_html}")
