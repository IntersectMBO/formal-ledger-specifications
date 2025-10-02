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
    readme_md_path: Path
    contributing_md_path: Path
    src_dir: Path
    lib_exts_dir: Path
    build_tools_dir: Path

    # Build tools subdirectories
    scripts_dir: Path
    md_scripts_dir: Path
    static_dir: Path

    # Static content directories
    latex_dir: Path
    md_dir: Path

    # MkDocs static structure
    mkdocs_dir: Path
    mkdocs_docs_dir: Path

    # Key input files
    macros_sty_path: Path
    references_bib_path: Path

    # CSS and JS assets
    md_css_dir: Path
    md_js_dir: Path
    custom_css_path: Path
    katex_js_path: Path

    # Navigation templates
    mkdocs_nav_yml_path: Path

    @classmethod
    def from_project_root(cls, project_root: Path) -> SourcePaths:
        """Construct SourcePaths from project root directory."""

        # Validate project root
        if not project_root.is_dir():
            raise ValueError(f"Project root does not exist: {project_root}")

        # Core directories
        readme_md_path = project_root / "README.md"
        contributing_md_path = project_root / "CONTRIBUTING.md"
        src_dir = project_root / "src"
        lib_exts_dir = project_root / "src-lib-exts"
        build_tools_dir = project_root / "build-tools"

        # Build tools structure
        scripts_dir = build_tools_dir / "scripts"
        md_scripts_dir = scripts_dir / "md"
        static_dir = build_tools_dir / "static"

        # Static content
        latex_dir = static_dir / "latex"
        md_dir = static_dir / "md"

        # MkDocs static
        mkdocs_dir = md_dir / "mkdocs"
        mkdocs_docs_dir = mkdocs_dir / "docs"

        # Key files
        macros_sty_path = latex_dir / "macros.sty"
        references_bib_path = latex_dir / "references.bib"

        # Assets
        md_css_dir = mkdocs_docs_dir / "css"
        md_js_dir = mkdocs_docs_dir / "js"
        custom_css_path = md_css_dir / "custom.css"
        katex_js_path = md_js_dir / "katex-config.js"

        # Navigation
        mkdocs_nav_yml_path = md_dir / "nav.yml"

        return cls(
            project_root=project_root,
            readme_md_path=readme_md_path,
            contributing_md_path=contributing_md_path,
            src_dir=src_dir,
            lib_exts_dir=lib_exts_dir,
            build_tools_dir=build_tools_dir,
            scripts_dir=scripts_dir,
            md_scripts_dir=md_scripts_dir,
            static_dir=static_dir,
            latex_dir=latex_dir,
            md_dir=md_dir,
            mkdocs_dir=mkdocs_dir,
            mkdocs_docs_dir=mkdocs_docs_dir,
            macros_sty_path=macros_sty_path,
            references_bib_path=references_bib_path,
            md_css_dir=md_css_dir,
            md_js_dir=md_js_dir,
            custom_css_path=custom_css_path,
            katex_js_path=katex_js_path,
            mkdocs_nav_yml_path=mkdocs_nav_yml_path,
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
    mkdocs_dir: Path
    mkdocs_docs_dir: Path
    mkdocs_css_dir: Path
    mkdocs_js_dir: Path
    mkdocs_includes_dir: Path

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
        mkdocs_dir = build_md_dir / "mkdocs"
        mkdocs_docs_dir = mkdocs_dir / "docs"
        mkdocs_css_dir = mkdocs_docs_dir / "css"
        mkdocs_js_dir = mkdocs_docs_dir / "js"
        mkdocs_includes_dir = mkdocs_dir / "includes"

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
            mkdocs_dir=mkdocs_dir,
            mkdocs_docs_dir=mkdocs_docs_dir,
            mkdocs_css_dir=mkdocs_css_dir,
            mkdocs_js_dir=mkdocs_js_dir,
            mkdocs_includes_dir=mkdocs_includes_dir,
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
    html_main_file: str  # e.g., "Ledger.lagda.md"
    generate_html: bool
    # File for testing (on just a small subset of the code base)
    html_test_file: str
    html_backend_flags: Tuple[str, ...]
    # Library file configuration
    lib_file_name: str

    @classmethod
    def default(cls: Type[AgdaConfig]) -> AgdaConfig:
        """Default Agda configuration."""
        return cls(
            dependencies=(
                "standard-library",
                "standard-library-classes",
                "standard-library-meta",
                "abstract-set-theory",
                "iog-prelude"
            ),
            html_main_file="Ledger.lagda.md",
            html_test_file="Ledger.lagda.md", # Using Ledger.lagda.md for now
            generate_html=True,
            html_backend_flags=("--fls","--fls-main-only"),
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
    """Configuration for site generation (MkDocs)."""

    # Site metadata
    site_name: str
    site_description: str
    site_url: Optional[str]

    # Build options
    generate_mkdocs: bool

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
    test_mode: bool
    run_agda_html: bool
    cleanup_intermediates: bool
    verbose_logging: bool

    @classmethod
    def create(
        cls,
        project_root: Optional[Path] = None,
        mode: BuildMode = "development",
        run_agda_html: bool = False,
        test_mode: bool = False,
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
            verbose_logging = False
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
            test_mode=test_mode,
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
    test_mode: bool = False,
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
        run_agda_html=run_agda_html,
        test_mode=test_mode
    )


# Type checking helpers
if __name__ == "__main__":
    # Simple validation when run directly
    config = load_build_config()
    print(f"✅ Configuration loaded successfully")
    print(f"Project root: {config.source_paths.project_root}")
    print(f"Build directory: {config.build_paths.build_dir}")
    print(f"Mode: {config.mode}")
    print(f"Agda HTML: {config.run_agda_html}")
