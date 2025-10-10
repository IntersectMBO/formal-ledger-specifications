// === Agda hover definitions ===============================================
// Works on Agda-generated HTML embedded in your Markdown, i.e., inside <pre class="Agda">.
// Shows a tooltip on hover with (1) token info, (2) link to full definition,
// and (best-effort) a short snippet from the target page near the anchor.

(function () {
  const HOVER_SELECTOR = 'pre.Agda a[href]';       // limit to Agda pre blocks
  const HOVER_DELAY_MS = 120;                      // small debounce to avoid flicker
  const MAX_SNIPPET_CHARS = 220;                   // keep tooltips compact
  const cache = new Map();                         // href -> { html, title, className, module, snippet }

  let tooltipEl = null;
  let hideTimer = null;
  let showTimer = null;

  function createTooltip() {
    if (tooltipEl) return tooltipEl;
    tooltipEl = document.createElement('div');
    tooltipEl.className = 'agda-tooltip hidden';
    tooltipEl.setAttribute('role', 'tooltip');
    tooltipEl.innerHTML = '<div class="agda-tooltip-inner"></div>';
    document.body.appendChild(tooltipEl);
    return tooltipEl;
  }

  function positionTooltip(evt, el) {
    const pad = 12;
    const vw = window.innerWidth;
    const vh = window.innerHeight;
    const rect = el.getBoundingClientRect();
    const tipRect = tooltipEl.getBoundingClientRect();
    let top = rect.bottom + window.scrollY + pad;
    let left = evt.clientX + window.scrollX + pad;

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

  function inferTokenInfo(a) {
    // Try to infer token info from the Agda link classes + URL
    const classes = (a.getAttribute('class') || '').split(/\s+/).filter(Boolean);
    const agdaClass = classes.find(c => /^(Function|Field|Datatype|Record|Module|Primitive|InductiveConstructor|Operator)$/.test(c)) || 'Symbol';
    const href = a.getAttribute('href') || '';
    const url = new URL(href, window.location.href);
    const moduleFile = (url.pathname.split('/').pop() || '').replace(/\.html$/,'');
    const moduleName = moduleFile || 'Module';
    // The visible label (basename) is often adjacent; fall back to text
    const basename = a.textContent.trim() || moduleName;
    const anchor = url.hash ? url.hash.slice(1) : '';
    return { href: url.href, basename, agdaClass, moduleName, anchor };
  }

  async function fetchSnippet(href, anchor) {
    try {
      const res = await fetch(href, { credentials: 'same-origin' });
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const html = await res.text();

      const dom = new DOMParser().parseFromString(html, 'text/html');

      // 1) Find the anchor element, then its closest Agda <pre>
      const target = anchor ? dom.getElementById(anchor) : null;
      const pre = target ? target.closest('pre.Agda') : dom.querySelector('pre.Agda');
      if (!pre) return { snippet: '' };

      // 2) Compute the anchor's character offset within that <pre>
      const index = target ? charIndexWithin(pre, target) : -1;

      // 3) Extract a multi-line definition block that surrounds the anchor
      const text = pre.textContent || '';
      const { block } = extractDefinitionBlock(text, index, {
        // -- tweakable knobs --
        minLines: 2,     // default: 2 lines
        maxLines: 14,    // default: 14 lines
        maxChars: 1200,  // hard cap to keep tooltips snappy
        includeUpwardSignature: true,
      });

      return { snippet: block.trim() };
    } catch (_e) {
      return { snippet: '' };
    }
  }
  // async function fetchSnippet(href, anchor) {
  //   try {
  //     const res = await fetch(href, { credentials: 'same-origin' });
  //     if (!res.ok) throw new Error(`HTTP ${res.status}`);
  //     const html = await res.text();

  //     // Best-effort: parse the target page & grab nearby code around the anchor
  //     const dom = new DOMParser().parseFromString(html, 'text/html');
  //     const target = anchor ? dom.getElementById(anchor) : null;
  //     const pre = target ? target.closest('pre.Agda') : dom.querySelector('pre.Agda');

  //     if (!pre) return { snippet: '' };

  //     // Convert the <pre> to text and extract a compact snippet around the anchor id
  //     const preText = pre.textContent || '';
  //     if (!preText) return { snippet: '' };

  //     let snippet = preText;
  //     // Try to bias toward the area containing the anchor id text (Agda puts ids on <a>, not text;
  //     // so we approximate by taking the middle of the <pre> if we don't find anything)
  //     const mid = Math.floor(preText.length / 2);
  //     const start = Math.max(0, mid - Math.floor(MAX_SNIPPET_CHARS / 2));
  //     snippet = preText.slice(start, start + MAX_SNIPPET_CHARS).trim();

  //     // Normalize whitespace; keep “code” flavor
  //     snippet = snippet.replace(/\s+\n/g, '\n').replace(/\n{3,}/g, '\n\n');

  //     return { snippet };
  //   } catch (_e) {
  //     return { snippet: '' };
  //   }
  // }

  /**
   * Compute the character index of `node` relative to the start of `root`,
   * by using a DOM Range. Falls back to -1 if anything fails.
   */
  function charIndexWithin(root, node) {
    try {
      const r = document.createRange();
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
   *  - Split <pre> text into lines, track cumulative offsets.
   *  - Find the line containing anchorIndex (or mid if -1).
   *  - Expand upward to include header/signature lines:
   *      - previous non-empty lines that are less-indented than the current line (headers),
   *      - or that look like a type signature (contains ':' or 'record'/'data'/'module').
   *  - Expand downward while:
   *      - line is indented >= firstDefIndent (continuation/clauses),
   *      - OR it’s a clause/where/with line,
   *      - stop at first blank line following content.
   *  - Enforce min/max lines and maxChars guardrails.
   */
  function extractDefinitionBlock(text, anchorIndex, opts) {
    const {
      minLines = 2,
      maxLines = 12,
      maxChars = 1000,
      includeUpwardSignature = true,
    } = opts || {};

    const lines = text.split(/\r?\n/);
    const lens = lines.map(l => l.length + 1); // +1 for newline
    const starts = new Array(lines.length);
    let acc = 0;
    for (let i = 0; i < lines.length; i++) {
      starts[i] = acc;
      acc += lens[i];
    }

    // Find anchor line (or fallback to middle line)
    let iAnchor = 0;
    if (anchorIndex >= 0) {
      for (let i = 0; i < starts.length; i++) {
        const s = starts[i];
        const e = s + Math.max(0, lens[i] - 1); // exclude trailing newline
        if (anchorIndex >= s && anchorIndex <= e) { iAnchor = i; break; }
        if (anchorIndex < s) { iAnchor = Math.max(0, i - 1); break; }
        if (i === starts.length - 1) iAnchor = i;
      }
    } else {
      iAnchor = Math.floor(lines.length / 2);
    }

    // Helpers
    const indent = l => (l.match(/^\s*/)?.[0]?.length ?? 0);
    const isBlank = l => /^\s*$/.test(l);
    const looksLikeHeader = l =>
      /\brecord\b|\bdata\b|\bmodule\b|\bconstructor\b/.test(l) || /:/.test(l);
    const looksLikeClause = l =>
      /\bwhere\b|\bwith\b|^\s*\|/.test(l) || /:=|=\s*$|→|→\s*$/.test(l);

    // 1) Seed line: the one with anchor
    let start = iAnchor, end = iAnchor;

    // 2) Expand upward for headers/signatures (optional)
    if (includeUpwardSignature) {
      let i = iAnchor - 1;
      while (i >= 0) {
        const l = lines[i];
        if (isBlank(l)) { i--; continue; }
        if (looksLikeHeader(l) || indent(l) <= indent(lines[start])) {
          start = i; i--;
        } else {
          break;
        }
        if (end - start + 1 >= maxLines) break;
      }
    }

    // 3) Expand downward for continuation/clauses
    const firstIndent = indent(lines[start]);
    let sawContent = false;
    for (let i = end + 1; i < lines.length; i++) {
      const l = lines[i];
      if (isBlank(l)) {
        if (sawContent) { end = i - 1; break; }
        // if blank before any content, skip it but don't count it
        continue;
      }
      const ind = indent(l);
      if (ind >= firstIndent || looksLikeClause(l)) {
        end = i;
        sawContent = true;
      } else {
        // hit a new top-level thing
        break;
      }
      if (end - start + 1 >= maxLines) break;
    }

    // 4) Ensure at least minLines (extend down a bit if needed)
    while (end - start + 1 < minLines && end + 1 < lines.length && !isBlank(lines[end + 1])) {
      end++;
    }

    // 5) Compose block + enforce maxChars (trim softly on line boundary)
    let blockLines = lines.slice(start, end + 1);
    let block = blockLines.join('\n');
    if (block.length > maxChars) {
      // trim to nearest earlier newline before maxChars
      const cut = block.lastIndexOf('\n', maxChars);
      block = block.slice(0, cut > 0 ? cut : maxChars) + '\n…';
    }

    return { block, start, end, iAnchor };
  }



  function renderTooltipContent(info, snippet) {
    const { href, basename, agdaClass, moduleName } = info;
    const header = `<div class="agda-tip-head">
        <span class="agda-kind">${sanitize(agdaClass)}</span>
        <code class="agda-name">${sanitize(basename)}</code>
        <span class="agda-module">· ${sanitize(moduleName)}</span>
      </div>`;

    const body = snippet
      ? `<pre class="agda-tip-snippet"><code>${sanitize(snippet)}</code></pre>`
      : `<div class="agda-tip-empty">No preview available.</div>`;

    const footer = `<div class="agda-tip-actions">
        <a class="agda-open-def" href="${href}">Open definition ↗</a>
      </div>`;

    return header + body + footer;
  }

  function showTooltip(evt, a, content) {
    const el = createTooltip();
    el.querySelector('.agda-tooltip-inner').innerHTML = content;
    el.classList.remove('hidden');
    positionTooltip(evt, a);
  }

  function hideTooltipSoon() {
    if (!tooltipEl) return;
    tooltipEl.classList.add('hidden');
  }

  async function handleEnter(evt) {
    const a = evt.currentTarget;
    clearTimeout(hideTimer);
    clearTimeout(showTimer);

    showTimer = setTimeout(async () => {
      const key = a.href;
      let data = cache.get(key);

      const info = inferTokenInfo(a);
      if (!data) {
        // Render a fast “skeleton” immediately
        const skeleton = renderTooltipContent(info, '');
        showTooltip(evt, a, skeleton);

        // Fetch snippet (once)
        const { snippet } = await fetchSnippet(info.href, info.anchor);
        data = { info, snippet };
        cache.set(key, data);
      }

      const html = renderTooltipContent(info, data.snippet);
      showTooltip(evt, a, html);
    }, HOVER_DELAY_MS);
  }

  function handleLeave() {
    clearTimeout(showTimer);
    hideTimer = setTimeout(hideTooltipSoon, 60);
  }

  function handleMove(evt) {
    if (!tooltipEl || tooltipEl.classList.contains('hidden')) return;
    const a = evt.currentTarget;
    positionTooltip(evt, a);
  }

  function wireUp() {
    const anchors = document.querySelectorAll(HOVER_SELECTOR);
    anchors.forEach(a => {
      // Skip non-HTTP links
      const href = a.getAttribute('href');
      if (!href || href.startsWith('#') || href.startsWith('mailto:')) return;

      a.addEventListener('mouseenter', handleEnter, { passive: true });
      a.addEventListener('mouseleave', handleLeave, { passive: true });
      a.addEventListener('mousemove', handleMove,   { passive: true });
    });

    // Keep tooltip from flickering if user hovers the tooltip itself
    createTooltip();
    tooltipEl.addEventListener('mouseenter', () => clearTimeout(hideTimer));
    tooltipEl.addEventListener('mouseleave', hideTooltipSoon);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', wireUp);
  } else {
    wireUp();
  }
})();
