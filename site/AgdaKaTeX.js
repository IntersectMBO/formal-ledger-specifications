Array.from(document.getElementsByClassName('AgdaKaTeX')).forEach(el => {
  try {
    renderMathInElement(el, {
        delimiters: [
          {left: "$", right: "$", display: false},
        ]
        , trust: (context) => ['\\htmlId', '\\htmlClass', '\\href'].includes(context.command)
      });
  } catch (e) {
    console.error("KaTeX render error:", e);
  }
});
