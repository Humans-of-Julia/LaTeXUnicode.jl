using LaTeXUnicode
using Documenter

DocMeta.setdocmeta!(LaTeXUnicode, :DocTestSetup, :(using LaTeXUnicode); recursive=true)

makedocs(;
    modules=[LaTeXUnicode],
    authors="Jean-Francois Baffier",
    repo="https://github.com/Humans-of-Julia/LaTeXUnicode.jl/blob/{commit}{path}#{line}",
    sitename="LaTeXUnicode.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Humans-of-Julia.github.io/LaTeXUnicode.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Humans-of-Julia/LaTeXUnicode.jl",
    devbranch="main",
)
