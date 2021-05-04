using LaTeXt
using Documenter

DocMeta.setdocmeta!(LaTeXt, :DocTestSetup, :(using LaTeXt); recursive=true)

makedocs(;
    modules=[LaTeXt],
    authors="Jean-Francois Baffier",
    repo="https://github.com/Humans-of-Julia/LaTeXt.jl/blob/{commit}{path}#{line}",
    sitename="LaTeXt.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Humans-of-Julia.github.io/LaTeXt.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Humans-of-Julia/LaTeXt.jl",
    devbranch="main",
)
