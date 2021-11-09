include("../utils/command_line_util.jl")
include("../ports/positions_port.jl")


using Redis, DataFrames, Arrow, JSON3, AWSS3, AWS

println("margins_rt_starter.jl")