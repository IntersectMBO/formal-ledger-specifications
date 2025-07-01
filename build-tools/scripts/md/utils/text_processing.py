import re
from typing import Optional


def slugify(text_to_slug: Optional[str]) -> str:
    """
    Generates a slug from text, similar to Python-Markdown's default.
    """
    if not text_to_slug: # handle empty string case
        return "section" # default slug for empty text
    text_to_slug = str(text_to_slug) # ensure text is string
    slug = text_to_slug.lower()

    # Remove unwanted characters
    slug = re.sub(r'[^\w\s-]', '', slug) # remove anything not a letter, number, underscore, or hyphen
    slug = re.sub(r'[-\s]+', '-', slug)  # replace whitespace and hyphen sequences with single hyphen
    slug = slug.strip('-')               # remove leading/trailing hyphens
    if not slug:         # if all chars stripped
        return "section" # default slug if original text yields empty slug
    return slug
