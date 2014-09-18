(TeX-add-style-hook "astgen"
 (lambda ()
    (LaTeX-add-bibliographies
     "mylib")
    (LaTeX-add-environments
     "definition"
     "claim"
     "theorem"
     "example"
     "condition"
     "proposition"
     "lemma")
    (LaTeX-add-labels
     "lf"
     "lexdef"
     "gf"
     "nontd"
     "sf"
     "ie"
     "lex"
     "pars")
    (TeX-add-symbols
     '("cancelr" 1)
     '("blue" 1)
     '("red" 1)
     "st"
     "no")
    (TeX-run-style-hooks
     "ulem"
     "hyperref"
     "colorlinks=true"
     "url"
     "mathrsfs"
     "latexsym"
     "calrsfs"
     "color"
     "amsmath"
     "amsthm"
     ""
     "inputenc"
     "utf8"
     "latex2e"
     "art10"
     "article"
     "10pt"
     "a4paper")))

