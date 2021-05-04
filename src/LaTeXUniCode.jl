module LaTeXUniCode

using CSV
using DataFrames

export df

# From http://milde.users.sourceforge.net/LUCR/Math/data/unimathsymbols.txt
df = DataFrame(CSV.File("data/unimathsymbols.txt"; comment="#", header = false, delim = '^'))
rename!(df, [:code_point, :character, :latex, :class, :category, :requirements, :conflicts, :description])

end
