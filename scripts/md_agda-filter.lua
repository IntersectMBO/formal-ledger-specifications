-- agda-filter.lua (Version 9 - Simplified for Post-Processing, Commented)
-- Purpose: Pandoc Lua filter to process specific elements in the AST generated
--          by Pandoc's LaTeX reader from the output of preprocess.py.
-- Actions:
-- 1. Handles inline code elements (`Code`) potentially containing `@@AgdaTerm@@` markers,
--    converting them into Code elements with appropriate CSS classes.
-- 2. Handles raw inline elements (`RawInline`) potentially containing `\HighlightPlaceholder`,
--    converting them into Span elements with the 'highlight' class.
-- 3. Handles Div elements by walking their content to ensure inline handlers are applied.
-- NOTE: This filter *does not* handle code block placeholders (@@CODEBLOCK_ID_n@@)
--       or admonition markers (@@ADMONITION_START/END@@). They are intended
--       to pass through Pandoc unchanged (likely as Str in Para) for post-processing.
--
-- USAGE:
--   python preprocess.py Transaction.lagda preprocess_macros.json code_blocks.json > Transaction.lagda.temp
--   pandoc Transaction.lagda.temp -f latex -t gfm+attributes --lua-filter agda-filter.lua -o Transaction.lagda.intermediate
--   python postprocess.py Transaction.lagda.intermediate code_blocks.json Transaction.lagda
--

--- Checks if a Lua list (table) contains an item.
-- @param list The list (table) to check. Can be nil.
-- @param item The item to search for.
-- @return boolean True if item is found, false otherwise.
local function list_contains(list, item)
  if not list then return false end -- Handle nil table case
  for _, value in ipairs(list) do
    if value == item then
      return true
    end
  end
  return false
end

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

--- Processes Div elements in the Pandoc AST.
-- The main purpose now is to ensure that inline elements (Code, RawInline)
-- *within* any Div get processed by their respective handlers.
-- @param div The Div element.
-- @return table The potentially modified Div element (or original if no changes needed).
function Div(div)
  -- Define the inline walkers we care about applying within this Div
  local walkers = { Code = Code, RawInline = RawInline }
  -- Walk the div's content using these walkers. This processes any relevant
  -- inline elements inside the Div and returns a potentially modified Div.
  return pandoc.walk_block(div, walkers)
end


--- Processes RawInline elements.
-- Expected input from preprocess.py: \HighlightPlaceholder{...}
-- @param inline The RawInline element.
-- @return table The modified element (Span) or the original RawInline.
function RawInline(inline)
  -- Check if it's a raw 'latex' element and the format field exists
  if inline.format and inline.format:match 'latex' then
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
         -- Create the CSS class name (e.g., "agdafield") by lowercasing
         -- old version:
         --   local css_class = "agda-" .. args['class']:lower()
         local css_class = args['class']:lower()
         -- Create the Pandoc attributes structure
         local attrs = create_attrs({css_class})
         -- Return a *new* Code element with the correct basename as text and the attributes
         -- This effectively replaces the marker Code element with the final styled one.
         return pandoc.Code(args.basename, attrs)
     else
        -- If parsing the payload failed, print a warning to stderr
        print("Warning: Could not parse AgdaTerm marker payload: " .. (payload or "nil"))
        -- Return the original Code element containing the marker for debugging purposes
        return inline
     end
  end
  -- If it's not a Code element containing our marker, return it unchanged
  return inline
end
