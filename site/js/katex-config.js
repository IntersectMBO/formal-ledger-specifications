// js/katex-config.js
// KaTeX configuration for MkDocs

document.addEventListener("DOMContentLoaded", function() {
    renderMathInElement(document.body, {
        // Delimiters for inline and display math
        delimiters: [
            {left: "$$", right: "$$", display: true},
            {left: "$", right: "$", display: false},
            {left: "\\(", right: "\\)", display: false},
            {left: "\\[", right: "\\]", display: true}
        ],

        // KaTeX options
        throwOnError: false,
        errorColor: '#cc0000',

        // Preprocessing function to handle custom Agda-style math
        preProcess: function(math) {
            // Add any custom preprocessing here if needed for Agda compatibility
            return math;
        },

        // Trust mode for advanced features (be careful with this in production)
        trust: (context) => ['\\htmlId', '\\href'].includes(context.command),

        // Macros for common mathematical notation
        macros: {
            "\\RR": "\\mathbb{R}",
            "\\NN": "\\mathbb{N}",
            "\\ZZ": "\\mathbb{Z}",
            "\\QQ": "\\mathbb{Q}",
            "\\CC": "\\mathbb{C}",
            "\\PP": "\\mathbb{P}",
            "\\to": "\\rightarrow",
            "\\mapsto": "\\mapsto",
            "\\iff": "\\leftrightarrow",
            "\\implies": "\\Rightarrow",
            "\\subseteq": "\\subseteq",
            "\\supseteq": "\\supseteq",
            "\\subset": "\\subset",
            "\\supset": "\\supset",
            "\\emptyset": "\\emptyset",
            "\\in": "\\in",
            "\\notin": "\\notin",
            "\\cup": "\\cup",
            "\\cap": "\\cap",
            "\\setminus": "\\setminus",
            "\\times": "\\times",
            "\\cdot": "\\cdot",
            "\\circ": "\\circ",
            "\\oplus": "\\oplus",
            "\\otimes": "\\otimes",
            "\\land": "\\land",
            "\\lor": "\\lor",
            "\\lnot": "\\lnot",
            "\\forall": "\\forall",
            "\\exists": "\\exists",
            "\\equiv": "\\equiv",
            "\\approx": "\\approx",
            "\\cong": "\\cong",
            "\\leq": "\\leq",
            "\\geq": "\\geq",
            "\\ll": "\\ll",
            "\\gg": "\\gg",
            "\\pm": "\\pm",
            "\\mp": "\\mp",
            "\\cdots": "\\cdots",
            "\\ldots": "\\ldots",
            "\\vdots": "\\vdots",
            "\\ddots": "\\ddots"
        }
    });
});

// Additional configuration for dynamic content
// Re-render math when page content changes (useful for SPAs)
if (typeof MutationObserver !== 'undefined') {
    const observer = new MutationObserver(function(mutations) {
        mutations.forEach(function(mutation) {
            if (mutation.type === 'childList' && mutation.addedNodes.length > 0) {
                // Re-render math in newly added content
                mutation.addedNodes.forEach(function(node) {
                    if (node.nodeType === 1) { // Element node
                        renderMathInElement(node, {
                            delimiters: [
                                {left: "$$", right: "$$", display: true},
                                {left: "$", right: "$", display: false},
                                {left: "\\(", right: "\\)", display: false},
                                {left: "\\[", right: "\\]", display: true}
                            ],
                            throwOnError: false,
                            errorColor: '#cc0000'
                        });
                    }
                });
            }
        });
    });

    observer.observe(document.body, {
        childList: true,
        subtree: true
    });
}
