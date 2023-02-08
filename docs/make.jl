using GFTools
using Documenter

DocMeta.setdocmeta!(GFTools, :DocTestSetup, :(using GFTools); recursive=true)

makedocs(;
    modules=[GFTools],
    authors="Frederik Weissler, Julian Stobbe",
    repo="https://github.com/jfw96/GFTools.jl/blob/{commit}{path}#{line}",
    sitename="GFTools.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jfw96.github.io/GFTools.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jfw96/GFTools.jl",
    devbranch="main",
)
