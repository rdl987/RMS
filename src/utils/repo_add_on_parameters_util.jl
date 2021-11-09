include("./parameters_util.jl")

using DataFrames, Feather, Dates, DataFramesMeta, JSON3, StructTypes, Arrow

StructTypes.StructType(::Type{HpRow}) = StructTypes.Struct()
StructTypes.StructType(::Type{RepoAddonParameters}) = StructTypes.Struct()

println("utils/repo_add_on_parameters_util.jl")