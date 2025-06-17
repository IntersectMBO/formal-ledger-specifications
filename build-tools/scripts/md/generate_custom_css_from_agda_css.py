#!/usr/bin/env python3
"""
generate_custom_css_from_agda.py - Auto-generate custom.css from Agda.css

This script extracts colors from Agda.css and generates corresponding rules
for human-friendly flat classes like .AgdaField, .AgdaFunction, etc.

This gives us
✅ Human-friendly syntax: txins`{.AgdaField}
✅ Perfect color matching: Colors extracted directly from Agda.css
✅ Automatic updates: Re-run when Agda.css changes
✅ Simple maintenance: One source of truth for colors
"""

import re
from pathlib import Path
import sys

def extract_agda_colors(agda_css_path: str) -> dict:
    """
    Extract color mappings from Agda.css file.

    Returns a dictionary mapping class names to their CSS properties.
    Example: {'Field': 'color: #EE1289', 'Function': 'color: #0000FF'}
    """

    css_file = Path(agda_css_path)
    if not css_file.exists():
        print(f"Error: Agda.css not found at {agda_css_path}")
        return {}

    content = css_file.read_text()

    # Pattern to match .Agda .ClassName { properties }
    pattern = r'\.Agda\s+\.(\w+)\s*\{\s*([^}]*)\s*\}'

    color_mappings = {}

    for match in re.finditer(pattern, content):
        class_name = match.group(1)
        properties = match.group(2).strip()

        # Clean up properties (remove extra whitespace, normalize)
        properties = re.sub(r'\s+', ' ', properties).strip()

        color_mappings[class_name] = properties

    return color_mappings

def generate_custom_css(color_mappings: dict, additional_css: str = "") -> str:
    """
    Generate complete custom.css with Agda color mappings plus other project styles.
    """

    css_parts = []

    # Header
    css_parts.append("""/*
 * Custom CSS for Formal Ledger Specifications
 *
 * This file contains:
 * 1. Auto-generated Agda class styles (matching Agda.css colors)
 * 2. Project-specific customizations
 *
 * Agda classes are auto-generated from Agda.css to ensure color consistency
 * between code blocks and inline terms in prose.
 */

/* ============================================================================
 * AUTO-GENERATED AGDA CLASSES (from Agda.css)
 * ============================================================================ */
""")

    # Add Agda color mappings
    for class_name, properties in sorted(color_mappings.items()):
        rule = f"""code.Agda{class_name} {{
    {properties}
}}"""
        css_parts.append(rule)

    # Separator
    css_parts.append("""
/* ============================================================================
 * PROJECT-SPECIFIC STYLES
 * ============================================================================ */
""")

    # Add project-specific CSS
    if additional_css.strip():
        css_parts.append(additional_css.strip())
    else:
        # Default project styles
        css_parts.append("""/* Highlighting for \hldiff{} content */
.highlight {
    background-color: yellow;
    padding: 2px 4px;
    border-radius: 3px;
}

/* Caption styling */
.caption-text {
    font-style: italic;
    color: #666;
    margin-top: 0.5em;
}

/* Conway admonition styling */
.conway-specifics {
    border-left: 4px solid #2196F3;
    padding: 1em;
    margin: 1em 0;
    background-color: #f8f9fa;
}

/* Add other project-specific styles here */""")

    return "\n\n".join(css_parts) + "\n"

def main():
    """Main function with command-line interface."""

    if len(sys.argv) < 2:
        print("Usage: python generate_custom_css_from_agda.py <agda_css_path> [output_css_path] [existing_custom_css]")
        print("")
        print("Examples:")
        print("  python generate_custom_css_from_agda.py _build/html/Agda.css")
        print("  python generate_custom_css_from_agda.py Agda.css _build/mkdocs/src/docs/css/custom.css")
        print("  python generate_custom_css_from_agda.py Agda.css custom.css existing_custom.css")
        sys.exit(1)

    agda_css_path = sys.argv[1]
    output_css_path = sys.argv[2] if len(sys.argv) > 2 else "custom.css"
    existing_custom_css_path = sys.argv[3] if len(sys.argv) > 3 else None

    print(f"📄 Reading Agda.css from: {agda_css_path}")

    # Extract color mappings
    color_mappings = extract_agda_colors(agda_css_path)

    if not color_mappings:
        print("❌ No Agda color mappings found in CSS file")
        print("   Make sure the file contains rules like: .Agda .Field { color: #EE1289 }")
        sys.exit(1)

    print(f"✅ Found {len(color_mappings)} Agda class definitions")

    # Show what was found
    print("\n📋 Agda classes that will be mapped:")
    for class_name, properties in sorted(color_mappings.items()):
        print(f"   .Agda{class_name} {{ {properties} }}")

    # Read existing custom CSS if provided
    additional_css = ""
    if existing_custom_css_path and Path(existing_custom_css_path).exists():
        additional_css = Path(existing_custom_css_path).read_text()
        print(f"\n📄 Including existing custom CSS from: {existing_custom_css_path}")

    # Generate complete custom.css
    custom_css = generate_custom_css(color_mappings, additional_css)

    # Write to output file
    output_path = Path(output_css_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(custom_css)

    print(f"\n✅ Generated custom.css: {output_css_path}")
    print(f"   File size: {len(custom_css)} characters")

    print("\n🎯 Now we have:")
    print("✅ Human-friendly syntax: txins`{.AgdaField}")
    print("✅ Perfect color matching: colors from Agda.css")
    print("✅ Simple maintenance: auto-generated from Agda.css")

    print("\n📋 Integration steps:")
    print("1. Make sure mkdocs.yml includes: - css/custom.css")
    print("2. Our Lua filter uses: args['class'] (keep AgdaField)")
    print("3. RE-RUN THIS SCRIPT WHENEVER Agda.css CHANGES!!!")

if __name__ == "__main__":
    main()
