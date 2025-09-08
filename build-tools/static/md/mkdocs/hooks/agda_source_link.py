# hooks/agda_source_link.py
from urllib.parse import quote

def _blob(repo_url: str, branch: str, path: str) -> str:
    return f"{repo_url.rstrip('/')}/blob/{branch}/{quote(path)}"

def on_page_context(context, page, config, nav):
    """
    For pages with `source_path` in front matter, point:
      - Header octocat (config.repo_url) to that file
      - "Edit" action (page.edit_url) to that file

    Notes:
    - Material's "View" action (if enabled) derives a 'raw' link from edit_url.
    """
    meta = page.meta or {}
    src_rel = meta.get("source_path")
    if not src_rel:
        return context  # leave header link pointing at repo root

    # Branch priority: per-page > site-wide extra > default
    branch = meta.get("source_branch") or (config.get("extra", {}).get("source_branch") if isinstance(config, dict) else None) or "master"

    repo_root = config.get("repo_url") if isinstance(config, dict) else getattr(config, "repo_url", None)
    if not repo_root:
        return context

    blob_url = _blob(repo_root, branch, src_rel)

    # 1) Top-right octocat (header) uses config.repo_url in the template
    #    OK to update per page: we're only mutating the per-render context.
    # context["config"]["repo_url"] = blob_url

    # 2) "Edit" action
    context["page"].edit_url = blob_url

    return context
