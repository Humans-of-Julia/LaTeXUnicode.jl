using LaTeXUniCode
using Documenter

DocMeta.setdocmeta!(LaTeXUniCode, :DocTestSetup, :(using LaTeXUniCode); recursive=true)

makedocs(;
    modules=[LaTeXUniCode],
    authors="Jean-Francois Baffier",
    repo="https://github.com/Humans-of-Julia/LaTeXUniCode.jl/blob/{commit}{path}#{line}",
    sitename="LaTeXUniCode.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Humans-of-Julia.github.io/LaTeXUniCode.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Humans-of-Julia/LaTeXUniCode.jl",
    devbranch="main",
)
