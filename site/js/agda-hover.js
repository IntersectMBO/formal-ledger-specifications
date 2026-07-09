// === Agda hover definitions ===============================================
// Works on Agda-generated HTML embedded in Markdown, i.e., inside <pre class="Agda">.
// Shows a tooltip on hover with (1) token info, and (2) best-effort, a short
// snippet of the definition from the target page near the anchor.
//
// DOM contract (see build-tools/agda/src/Main.hs):
//   - every non-whitespace token is  <a id="<pos>" [href="Module.html#<defpos>"]
//     [class="Function|Datatype|..."]>token</a>  inside <pre class="Agda">;
//   - links always use the full "Module.html#pos" form, even for same-page
//     targets, and module-level links ("defPos <= 1") carry no anchor;
//   - all generated pages are flat siblings in the site root, so relative
//     hrefs resolve from any page.

(function () {
  const HOVER_SELECTOR = 'pre.Agda a[href]';       // limit to Agda pre blocks
  const HOVER_DELAY_MS = 120;                      // small debounce to avoid flicker

  // Name-kind classes emitted by the fls-agda backend on definition links.
  const KIND_CLASSES = new Set([
    'Argument', 'Bound', 'CoinductiveConstructor', 'Datatype', 'Field',
    'Function', 'Generalizable', 'InductiveConstructor', 'Macro', 'Module',
    'Postulate', 'Primitive', 'Record',
  ]);

  // Caches: fetch each target page once, extract each snippet once.
  const MAX_CACHED_PAGES = 16;     // parsed pages kept in memory
  const pageCache = new Map();     // page URL (no hash) -> Promise<Document|null>
  const snippetCache = new Map();  // full href -> snippet string

  let tooltipEl = null;
  let hideTimer = null;
  let showTimer = null;
  let activeAnchor = null;         // the <a> the pointer is currently over

  function createTooltip() {
    if (tooltipEl) return tooltipEl;
    tooltipEl = document.createElement('div');
    tooltipEl.className = 'agda-tooltip hidden';
    tooltipEl.setAttribute('role', 'tooltip');
    tooltipEl.innerHTML = '<div class="agda-tooltip-inner"></div>';
    document.body.appendChild(tooltipEl);
    // Keep tooltip from flickering if user hovers the tooltip itself
    // (only relevant if .agda-tooltip's pointer-events is flipped to 'auto').
    tooltipEl.addEventListener('mouseenter', () => clearTimeout(hideTimer));
    tooltipEl.addEventListener('mouseleave', hideTooltip);
    return tooltipEl;
  }

  function positionTooltip(evt, el) {
    const pad = 12;
    const vw = window.innerWidth;
    const vh = window.innerHeight;
    const rect = el.getBoundingClientRect();
    const tipRect = tooltipEl.getBoundingClientRect();
    // Fall back to the element's box for keyboard focus (no pointer position).
    const px = evt && typeof evt.clientX === 'number' ? evt.clientX : rect.left;
    let top = rect.bottom + window.scrollY + pad;
    let left = px + window.scrollX + pad;

    // if overflowing right edge, shift left
    if (left + tipRect.width > window.scrollX + vw - pad) {
      left = Math.max(window.scrollX + pad, vw + window.scrollX - tipRect.width - pad);
    }
    // if too low, pop above
    if (top + tipRect.height > window.scrollY + vh - pad) {
      top = rect.top + window.scrollY - tipRect.height - pad;
    }
    tooltipEl.style.top = `${top}px`;
    tooltipEl.style.left = `${left}px`;
  }

  function sanitize(text) {
    // very small helper: we only ever insert our own strings; still, be safe
    const div = document.createElement('div');
    div.textContent = text == null ? '' : String(text);
    return div.innerHTML;
  }

  // Insert spaces into camel-case kinds for display: "InductiveConstructor"
  // -> "Inductive Constructor".
  function displayKind(kind) {
    return kind.replace(/([a-z])([A-Z])/g, '$1 $2');
  }

  function inferTokenInfo(a) {
    // Infer token info from the Agda link classes + URL
    const classes = (a.getAttribute('class') || '').split(/\s+/).filter(Boolean);
    const kind = classes.find(c => KIND_CLASSES.has(c)) || '';
    const isOperator = classes.includes('Operator');
    const href = a.getAttribute('href') || '';
    const url = new URL(href, window.location.href);
    const moduleFile = (url.pathname.split('/').pop() || '').replace(/\.html$/, '');
    let moduleName = moduleFile;
    try { moduleName = decodeURIComponent(moduleFile); } catch (_e) { /* keep as-is */ }
    // The visible label is the token text; fall back to the module name
    const basename = a.textContent.trim() || moduleName;
    const anchor = url.hash ? url.hash.slice(1) : '';
    return {
      href: url.href,
      pageUrl: url.origin + url.pathname,
      basename,
      kind: kind ? displayKind(kind) + (isOperator ? ' operator' : '') : '',
      moduleName,
      anchor,
    };
  }

  // Fetch and parse a target page once; concurrent hovers share the promise.
  function fetchPage(pageUrl) {
    let p = pageCache.get(pageUrl);
    if (!p) {
      p = fetch(pageUrl, { credentials: 'same-origin' })
        .then(res => {
          if (!res.ok) throw new Error(`HTTP ${res.status}`);
          return res.text();
        })
        .then(html => new DOMParser().parseFromString(html, 'text/html'))
        .catch(() => null);
      // evict oldest parsed pages so memory stays bounded
      while (pageCache.size >= MAX_CACHED_PAGES) {
        pageCache.delete(pageCache.keys().next().value);
      }
      pageCache.set(pageUrl, p);
    }
    return p;
  }

  async function fetchSnippet(info) {
    // Module-level links carry no anchor; a snippet of "the top of the page"
    // is rarely the module header (often a hidden imports block), so skip.
    if (!info.anchor) return '';

    const cached = snippetCache.get(info.href);
    if (cached !== undefined) return cached;

    let snippet = '';
    const dom = await fetchPage(info.pageUrl);
    if (dom) {
      // Find the anchor element, then its closest Agda <pre>
      // (works both for mkdocs-wrapped pages and raw Agda html pages;
      // pre blocks hidden by agda_hidden_code.py are still in the DOM).
      const target = dom.getElementById(info.anchor);
      const pre = target ? target.closest('pre.Agda') : null;
      if (pre) {
        const index = charIndexWithin(pre, target);
        const text = pre.textContent || '';
        const { block } = extractDefinitionBlock(text, index, {
          // -- tweakable knobs --
          maxLines: 14,    // max lines shown from the defining paragraph
          maxChars: 1200,  // hard cap to keep tooltips snappy
        });
        snippet = block.trim();
      }
    }
    snippetCache.set(info.href, snippet);
    return snippet;
  }

  /**
   * Compute the character index of `node` relative to the start of `root`,
   * by using a DOM Range. Falls back to -1 if anything fails.
   * (The range is created from the node's own document: `root` comes from a
   * DOMParser document, not the live one.)
   */
  function charIndexWithin(root, node) {
    try {
      const r = (root.ownerDocument || document).createRange();
      r.setStart(root, 0);
      r.setEnd(node, 0);
      return r.toString().length;
    } catch {
      return -1;
    }
  }

  /**
   * Heuristically extract a "definition block" around `anchorIndex`.
   * Strategy:
   *  - Split <pre> text into lines, find the line containing anchorIndex.
   *  - Take the blank-line-delimited paragraph around that line: in Agda a
   *    definition (signature + clauses, or a data/record declaration) is
   *    usually one such paragraph.
   *  - If the anchor line is indented (a field, constructor, or definition
   *    in a where-block), additionally climb to each enclosing header line
   *    (nearest line above with strictly smaller indentation), so e.g. a
   *    record field is shown with its `record ... where` header. An `⋯` line
   *    marks any elided lines between headers and the paragraph.
   *  - Enforce maxLines/maxChars guardrails, appending `…` when truncated.
   */
  function extractDefinitionBlock(text, anchorIndex, opts) {
    const { maxLines = 14, maxChars = 1200 } = opts || {};

    const lines = text.split(/\r?\n/);
    const lens = lines.map(l => l.length + 1); // +1 for newline
    const starts = new Array(lines.length);
    let acc = 0;
    for (let i = 0; i < lines.length; i++) {
      starts[i] = acc;
      acc += lens[i];
    }

    // Find anchor line (or fall back to the first line)
    let iAnchor = 0;
    if (anchorIndex >= 0) {
      for (let i = 0; i < lines.length; i++) {
        if (anchorIndex < starts[i] + lens[i]) { iAnchor = i; break; }
      }
    }

    const indent = l => (l.match(/^\s*/)?.[0]?.length ?? 0);
    const isBlank = l => /^\s*$/.test(l);

    // 1) Paragraph containing the anchor line
    let start = iAnchor, end = iAnchor;
    while (start > 0 && !isBlank(lines[start - 1])) start--;
    while (end + 1 < lines.length && !isBlank(lines[end + 1])) end++;

    // 2) Cap the paragraph, keeping the lines from `start` (the signature
    //    usually comes first); make sure the anchor line stays included.
    let truncatedBelow = false;
    if (end - start + 1 > maxLines) {
      if (iAnchor - start + 1 > maxLines) start = iAnchor; // pathological; anchor wins
      end = start + maxLines - 1;
      if (end < iAnchor) end = iAnchor;
      truncatedBelow = true;
    }

    // 3) Climb to enclosing headers when the paragraph is indented
    const headers = [];
    let ind = indent(lines[start]);
    if (ind > 0 && anchorIndex >= 0) {
      for (let i = start - 1; i >= 0 && ind > 0; i--) {
        const l = lines[i];
        if (isBlank(l)) continue;
        if (indent(l) < ind) {
          headers.unshift({ i, l });
          ind = indent(l);
        }
      }
    }

    // 4) Compose block: headers (with `⋯` marking elided lines) + paragraph
    const parts = [];
    let prev = -1;
    for (const h of headers) {
      if (prev >= 0 && h.i > prev + 1) parts.push('⋯');
      parts.push(h.l);
      prev = h.i;
    }
    if (prev >= 0 && start > prev + 1) parts.push('⋯');
    parts.push(...lines.slice(start, end + 1));
    if (truncatedBelow) parts.push('…');

    let block = parts.join('\n');
    if (block.length > maxChars) {
      // trim to nearest earlier newline before maxChars
      const cut = block.lastIndexOf('\n', maxChars);
      block = block.slice(0, cut > 0 ? cut : maxChars) + '\n…';
    }

    return { block, start, end, iAnchor };
  }

  function renderTooltipContent(info, snippet, loading) {
    const { basename, kind, moduleName } = info;

    const header = `<div class="agda-tip-head">
        ${kind ? `<span class="agda-kind">${sanitize(kind)}</span>` : ''}
        <code class="agda-name">${sanitize(basename)}</code>
        <span class="agda-module">· ${sanitize(moduleName)}</span>
      </div>`;

    const body = snippet
      ? `<pre class="agda-tip-snippet"><code>${sanitize(snippet)}</code></pre>`
      : loading
        ? `<div class="agda-tip-empty agda-tip-loading">Loading preview…</div>`
        : `<div class="agda-tip-empty">No preview available.</div>`;

    return header + body;
  }

  function showTooltip(evt, a, content) {
    const el = createTooltip();
    el.querySelector('.agda-tooltip-inner').innerHTML = content;
    el.classList.remove('hidden');
    positionTooltip(evt, a);
  }

  function hideTooltip() {
    if (!tooltipEl) return;
    tooltipEl.classList.add('hidden');
  }

  function handleEnter(evt) {
    const a = evt.currentTarget;
    activeAnchor = a;
    clearTimeout(hideTimer);
    clearTimeout(showTimer);

    showTimer = setTimeout(async () => {
      if (activeAnchor !== a) return;

      const info = inferTokenInfo(a);
      const cached = snippetCache.get(info.href);

      if (cached === undefined) {
        // Render a fast "skeleton" immediately, then fetch the snippet
        showTooltip(evt, a, renderTooltipContent(info, '', true));
        const snippet = await fetchSnippet(info);
        // The pointer may have moved on while we were fetching
        if (activeAnchor !== a) return;
        showTooltip(evt, a, renderTooltipContent(info, snippet, false));
      } else {
        showTooltip(evt, a, renderTooltipContent(info, cached, false));
      }
    }, HOVER_DELAY_MS);
  }

  function handleLeave(evt) {
    if (activeAnchor === evt.currentTarget) activeAnchor = null;
    clearTimeout(showTimer);
    hideTimer = setTimeout(hideTooltip, 60);
  }

  function handleMove(evt) {
    if (!tooltipEl || tooltipEl.classList.contains('hidden')) return;
    positionTooltip(evt, evt.currentTarget);
  }

  function wireUp() {
    // Hover is meaningless on touch-only devices; don't intercept taps.
    if (window.matchMedia && window.matchMedia('(hover: none)').matches) return;

    const anchors = document.querySelectorAll(HOVER_SELECTOR);
    anchors.forEach(a => {
      // Skip in-page and non-document links
      const href = a.getAttribute('href');
      if (!href || href.startsWith('#') || href.startsWith('mailto:')) return;

      a.addEventListener('mouseenter', handleEnter, { passive: true });
      a.addEventListener('mouseleave', handleLeave, { passive: true });
      a.addEventListener('mousemove', handleMove,   { passive: true });
      // Keyboard focus gets the same treatment (positioned by the element box)
      a.addEventListener('focus', handleEnter, { passive: true });
      a.addEventListener('blur', handleLeave,  { passive: true });
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', wireUp);
  } else {
    wireUp();
  }
})();
