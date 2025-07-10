# test_real_bibtex.py
"""Test the BibTeX processor with your actual references.bib file."""

import sys
from pathlib import Path

# Add current directory to Python path
current_dir = Path(__file__).parent
if str(current_dir) not in sys.path:
    sys.path.insert(0, str(current_dir))
sys.path.insert(0, str(Path(__file__).parent.parent))

from modules.bibtex_processor import BibTeXProcessor, BibliographyConfig

def main():
    # Path to your actual references.bib
    refs_path = Path("../../static/latex/references.bib")

    print(f"🔍 Looking for bibliography at: {refs_path.resolve()}")

    if not refs_path.exists():
        print(f"❌ Bibliography file not found at {refs_path}")
        print("   Make sure the path is correct relative to build-tools/scripts/md/")
        return

    print(f"✅ Found bibliography file: {refs_path}")

    # Create processor
    print("📚 Creating BibTeX processor...")
    processor_result = BibTeXProcessor.from_file(refs_path)

    if processor_result.is_err:
        print(f"❌ Failed to create processor: {processor_result.unwrap_err()}")
        return

    processor = processor_result.unwrap()
    stats = processor.get_statistics()

    print(f"✅ Processor created successfully!")
    print(f"   Total entries: {stats['total_entries']}")
    print(f"   Entry types: {stats['entry_types']}")
    print(f"   With alpha labels: {stats['has_alpha_labels']}")

    # Show some example entries
    print(f"\n📖 Sample bibliography entries:")
    for i, (key, entry) in enumerate(processor.bibliography.items()):
        if i >= 5:  # Show first 5
            break
        print(f"   [{entry.short_label}] {key}: {entry.title[:50]}...")

    # Test with some real LaTeX content
    test_content = r"""
    The Cardano ledger specification is described in \cite{shelley-ledger-spec}
    and extended with governance features in \textcite[\sectionname~4]{cip1694}.

    The formal methods approach builds on \cite{ouroboros} and related work
    including \cite{chakravarty2020extended,utxo-ma}.
    """

    print(f"\n🔄 Processing test content...")
    print("Original LaTeX:")
    print(test_content)

    new_content, replacements, bibliography = processor.process_content(test_content)

    print(f"\nProcessed Markdown:")
    print(new_content)

    print(f"\n📚 Generated Bibliography:")
    print(bibliography)

    print(f"\n📊 Processing Summary:")
    print(f"   Citations replaced: {len(replacements)}")
    print(f"   Bibliography entries: {len(bibliography.split('**[')) - 1}")

    for repl in replacements:
        print(f"   • {repl.original_latex} → {repl.markdown_replacement}")

if __name__ == "__main__":
    main()
