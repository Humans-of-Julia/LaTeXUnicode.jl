module LaTeXUnicode

using CSV
using DataFrames

export translationary

function build()
    # From http://milde.users.sourceforge.net/LUCR/Math/data/unimathsymbols.txt
    path = joinpath(dirname(dirname(pathof(LaTeXUnicode))), "data", "unimathsymbols.txt")
    df = DataFrame(CSV.File(path; comment="#", header = false, delim = '^'))
    rename!(df,
        [
            :code_point, :character, :latex, :class,
            :category, :requirements, :conflicts, :description
        ]
    )

    return df
end

const translationary = build()

end
