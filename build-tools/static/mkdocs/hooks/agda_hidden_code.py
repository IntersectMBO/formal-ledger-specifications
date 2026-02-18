import re
import mkdocs.plugins

pattern = re.compile(r'<!--\n<pre class="Agda">(.*?)</pre>-->', re.DOTALL)

def on_page_markdown(markdown, page, **kwargs):
   return pattern.sub(lambda m: f'<pre class="Agda hidden-source">{m.group(1)}</pre>', markdown)
