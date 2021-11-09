using DataFrames
using Dates
using DataFramesMeta
using Statistics
using Lazy: @>
using ShiftedArrays
using BenchmarkTools
using Arrow
using Pipe
#= using Redis =#
using DataStructures

using Redis: RedisConnection, open_pipeline, lpush, read_pipeline, disconnect , smembers, hgetall, get, rpop

include("../utils/execution_mode_util.jl")


println("ports/positions_port.jl")