import re
from pathlib import Path
import pandas as pd
from build_tools.scripts.md.config.build_config import load_build_config

def extract_labels_from_markdown_file(md_path: Path):
    label_pattern = re.compile(r'^#+\s+(.*?)\s*\{#(.*?)\}', re.MULTILINE)
    content = md_path.read_text(encoding="utf-8")
    entries = []

    for match in label_pattern.finditer(content):
        section_title, label = match.group(1).strip(), match.group(2).strip()
        entries.append({
            "label": label,
            "file": str(md_path.relative_to(config.source_paths.project_root)),
            "anchor": f"#{label}",
            "caption_text": section_title
        })
    return entries

config = load_build_config()
markdown_dirs = [
    config.source_paths.mkdocs_docs_dir,
    config.source_paths.src_dir
]

all_entries = []
for directory in markdown_dirs:
    if not directory.exists():
        continue
    for md_file in directory.rglob("*.md"):
        all_entries.extend(extract_labels_from_markdown_file(md_file))

df = pd.DataFrame(all_entries)
print(df.to_string(index=False))
