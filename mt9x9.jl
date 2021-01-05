#!/usr/bin/julia
#=
9x9 multiplication table in Julia
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
=#
# julia mt9x9.jl || ( chmod +x mt9x9.jl ; ./mt9x9.jl )

using Printf
for i in 1:3:9, j = 1:9, k = [i, i+1, i+2]
    @printf("%dx%d=%2d", k, j, k*j)
    print(k!=i+2 ? "\t" : j==9 ? "\n\n" : "\n")
end
