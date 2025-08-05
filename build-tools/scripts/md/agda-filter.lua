-- agda-filter.lua
-- Purpose: Pandoc Lua filter to process specific elements in the AST generated
--          by Pandoc's LaTeX reader from the output of preprocess.py.
-- Usage: This script is part of a four stage pipeline and is meant to be used in conjunction with
--        `generate_macros.py`, `preprocess.py`, `postprocess.py`, and pandoc.  For example,
--          $ python generate_macros_json.py macros.sty preprocess_macros.json
--          $ python preprocess.py Transaction.lagda preprocess_macros.json code_blocks.json > Transaction.lagda.temp
--          $ pandoc Transaction.lagda.temp -f latex -t gfm+attributes --lua-filter agda-filter.lua -o Transaction.lagda.intermediate
--          $ python postprocess.py Transaction.lagda.intermediate code_blocks.json labels_map.json Transaction.lagda.md
-- Actions:
-- 1. Handles inline code elements (`Code`) potentially containing `@@AgdaTerm@@` markers,
--    converting them into Code elements with appropriate CSS classes.
-- 2. Handles raw inline elements (`RawInline`) potentially containing `\HighlightPlaceholder`,
--    converting them into Span elements with the 'highlight' class.
-- 3. Handles Div elements by walking their content to ensure inline handlers are applied.
-- NOTE: This filter *does not* handle code block placeholders (@@CODEBLOCK_ID_n@@)
--       or admonition markers (@@ADMONITION_START/END@@). They are intended
--       to pass through Pandoc unchanged (likely as Str in Para) for post-processing.

--- Parses key=value pairs from the AgdaTerm marker string.
-- Example input: "basename=Acnt@@class=AgdaRecord"
-- @param marker_text The string containing key=value pairs separated by @@.
-- @return table A table mapping keys to values (e.g., {basename="Acnt", class="AgdaRecord"}).
local function parse_placeholder_args_from_marker(marker_text)
  local args = {}
  -- Use gmatch to find all key=value pairs separated by @@
  -- Pattern: ([^=@]+) captures key (non-equals, non-at), = literal equals, ([^@]+) captures value (non-at)
  for key, value in string.gmatch(marker_text, "([^=@]+)=([^@]+)") do
     -- Trim potential whitespace from captured key and value
     key = key:match("^%s*(.-)%s*$")
     value = value:match("^%s*(.-)%s*$")
     args[key] = value
  end
  return args
end

--- Helper function to create Pandoc attributes structure, compatible with
-- Pandoc versions before and after 3.0.
-- @param classes (optional) A list (table) of CSS classes.
-- @param kv_pairs (optional) A table of key-value pairs.
-- @return table The Pandoc attribute structure.
local function create_attrs(classes, kv_pairs)
   classes = classes or {}
   kv_pairs = kv_pairs or {}
   local identifier = "" -- No ID needed for these elements
   if type(pandoc.Attr) == "function" then
       -- Pandoc 3.x+ constructor: pandoc.Attr(identifier, classes, key-value_pairs)
       return pandoc.Attr(identifier, classes, kv_pairs)
   else
       -- Older Pandoc 2.x table format: {identifier, classes, key-value_pairs}
       return {identifier, classes, kv_pairs}
   end
end

--- Processes our specific LaTeX commands like \label, \Cref, \caption.
-- @param latex_text The string content of a RawInline('tex') element.
-- @return A Pandoc element (or list of elements) if a command is matched and transformed, otherwise nil.
local function transform_latex_commands(latex_text)
  -- Handle \label{target}
  -- Creates an HTML anchor: <a id="sanitized_target_id"></a>
  local label_target = latex_text:match('^\\label%s*{(.-)}$')
  if label_target then
    -- Sanitize the label_target to be a valid HTML ID
    -- This replaces common problematic characters with underscores.
    local sanitized_id = label_target:gsub("[^%w%-_%.%:]", "_")
    return pandoc.RawInline('html', '<a id="' .. sanitized_id .. '"></a>')
  end

  -- Handle \Cref{target1,target2,...}
  -- Creates Markdown links, e.g., [Figure fig:my-figure](#fig:my-figure)
  local cref_targets_str = latex_text:match('^\\Cref%s*{(.-)}$')
  if cref_targets_str then
    local inlines_for_cref = {}
    local targets_original = {} -- Store original target names for display text
    local targets_sanitized = {} -- Store sanitized target names for href

    for target in cref_targets_str:gmatch("([^,]+)") do
      local original_t = target:match("^%s*(.-)%s*$") -- Trim whitespace
      table.insert(targets_original, original_t)
      table.insert(targets_sanitized, original_t:gsub("[^%w%-_%.%:]", "_")) -- Sanitize for href
    end

    for i, original_target in ipairs(targets_original) do
      local sanitized_href_target = targets_sanitized[i]
      local link_text_elements = {} -- A list of Pandoc inline elements for the link text

      -- Determine prefix based on original label structure (e.g., "fig:", "sec:")
      if original_target:match('^fig:') then table.insert(link_text_elements, pandoc.Str("Figure"))
      elseif original_target:match('^sec:') then table.insert(link_text_elements, pandoc.Str("Section"))
      elseif original_target:match('^tbl:') then table.insert(link_text_elements, pandoc.Str("Table"))
      elseif original_target:match('^eq:') then table.insert(link_text_elements, pandoc.Str("Equation"))
      else table.insert(link_text_elements, pandoc.Str("Ref.")) -- Default prefix
      end
      table.insert(link_text_elements, pandoc.Space())
      table.insert(link_text_elements, pandoc.Str(original_target)) -- Display the original label text

      -- Create the Pandoc Link element
      table.insert(inlines_for_cref, pandoc.Link(link_text_elements, '#' .. sanitized_href_target))

      -- Add separator (comma and space) if it's not the last target
      if i < #targets_original then
        table.insert(inlines_for_cref, pandoc.Str(','))
        table.insert(inlines_for_cref, pandoc.Space())
      end
    end

    -- If there's only one link, return it directly. Otherwise, wrap multiple links in a Span.
    if #inlines_for_cref == 1 then
      return inlines_for_cref[1]
    elseif #inlines_for_cref > 1 then
      return pandoc.Span(inlines_for_cref)
    else
      return nil -- Should not happen if cref_targets_str matched and had content
    end
  end

  -- Handle \caption{text}
  -- Transforms into a Span with class "caption-text" for styling.
  -- Example: <span class="caption-text"><strong>Caption:</strong> The caption text</span>
  local caption_text_content = latex_text:match('^\\caption%s*{(.*)}$') -- Using (.*) as captions are usually simple
  if caption_text_content then
    local caption_inlines = {
      pandoc.Strong(pandoc.Str("Caption:")), -- Makes "Caption:" bold
      pandoc.Space(),
      pandoc.Str(caption_text_content)
    }
    local attrs = create_attrs({"caption-text"}, {}) -- Uses your create_attrs helper
    return pandoc.Span(caption_inlines, attrs)
  end

  return nil -- Indicates that this function did not handle the latex_text
end


--- Processes Div elements in the Pandoc AST.
-- The main purpose now is to ensure that inline elements (Code, RawInline)
-- *within* any Div get processed by their respective handlers; we also
-- find any `div` created from a "theorem" environment and add the
-- `markdown="1"` attribute to it, which tells the Markdown writer to
-- process the content inside the div.
-- @param div The Div element.
-- @return table The potentially modified Div element (or original if no changes needed).
function Div(div)
  -- Check if this Div has the 'theorem' class
  local has_theorem_class = false
  for _, class in ipairs(div.classes) do
    if class == 'theorem' then
      has_theorem_class = true
      break
    end
  end

  if has_theorem_class then
    div.attributes['markdown'] = '1'
  end

  -- Define the inline walkers we care about applying within this Div
  local walkers = { Code = Code, RawInline = RawInline }
  -- Walk the div's content using these walkers. This processes any relevant
  -- inline elements inside the Div and returns a potentially modified Div.
  return pandoc.walk_block(div, walkers)
end


--- Processes RawInline elements.
-- Expected input from preprocess.py: \HighlightPlaceholder{...}
-- This function will now also delegate to transform_latex_commands.
-- @param inline The RawInline element.
-- @return table The modified element (Span) or the original RawInline.
function RawInline(inline)
  -- Check if it's a raw 'latex' element and the format field exists
  if inline.format and inline.format:match 'latex' then
    -- First, try to process specific LaTeX commands (\label, \Cref, \caption)
    local transformed_latex_command = transform_latex_commands(inline.text)
    if transformed_latex_command then
      return transformed_latex_command -- Return the transformed element
    end
    -- Check specifically for our HighlightPlaceholder marker
    -- Use non-greedy match (.*?) for the content within braces {}
    local highlight_match = inline.text:match '\\HighlightPlaceholder{(.*)}'
    if highlight_match then
       local content_str = highlight_match
       -- Convert the captured string content back to a basic Pandoc Str element.
       -- Assumes simple text content, won't handle nested LaTeX markup correctly.
       local content_inline = { pandoc.Str(content_str) }
       -- Create attributes structure with the "highlight" class
       local attrs = create_attrs({"highlight"})
       -- Return a Pandoc Span element wrapping the content with the class
       return pandoc.Span(content_inline, attrs)
    end
  end
  -- If it's not the HighlightPlaceholder or not LaTeX format, return it unchanged
  return inline
end


--- Processes Code inline elements.
-- Expected input from preprocess.py: \texttt{@@AgdaTerm@@...} parsed as Code element.
-- @param inline The Code element.
-- @return table The modified Code element (with class attributes) or the original Code element.
function Code(inline)
  -- Check if the inline code's text matches our AgdaTerm marker pattern
  -- Allows optional surrounding whitespace via %s*
  local marker_match = inline.text:match "^%s*@@AgdaTerm@@(.-)@@%s*$"
  if marker_match then
     local payload = marker_match -- The captured key=value string (e.g., "basename=...@@class=...")
     local args = parse_placeholder_args_from_marker(payload) -- Parse it

     -- Check if we successfully got required args: basename and class
     if args.basename and args['class'] then
         -- create CSS class name (e.g., "agdafield") by lowercasing
         local css_class = args['class']
         -- create pandoc attrs structure
         local attrs = create_attrs({css_class})
         -- return new Code element with correct basename as text and attributes
         -- (effectively replaces marker Code element with final styled one)
         return pandoc.Code(args.basename, attrs)
     else
        -- if parsing payload failed, print warning to stderr
        print("Warning: Could not parse AgdaTerm marker payload: " .. (payload or "nil"))
        -- return original Code element containing marker for debugging purposes
        return inline
     end
  end
  -- if not Code element containing our marker, return it unchanged
  return inline
end

--- Processes RawInline elements.
-- Expected input from preprocess.py: \HighlightPlaceholder{...}
-- This function will now also delegate to transform_latex_commands.
-- @param inline The RawInline element.
-- @return table The modified element (Span) or the original RawInline.
function RawInline(inline)
  -- Check if it's a raw 'latex' element and the format field exists
  if inline.format and inline.format:match 'latex' then
    -- First, try to process specific LaTeX commands (\label, \Cref, \caption)
    local transformed_latex_command = transform_latex_commands(inline.text)
    if transformed_latex_command then
      return transformed_latex_command -- Return the transformed element
    end
    -- Check specifically for our HighlightPlaceholder marker
    -- Use non-greedy match (.*?) for the content within braces {}
    local highlight_match = inline.text:match '\\HighlightPlaceholder{(.*)}'
    if highlight_match then
       local content_str = highlight_match
       -- Convert the captured string content back to a basic Pandoc Str element.
       local content_inline = { pandoc.Str(content_str) }
       -- Create attributes structure with the "highlight" class
       local attrs = create_attrs({"highlight"})
       -- Return a Pandoc Span element wrapping the content with the class
       return pandoc.Span(content_inline, attrs)
    end
  end
  -- If it's not the HighlightPlaceholder or not LaTeX format, return it unchanged
  return inline
end
