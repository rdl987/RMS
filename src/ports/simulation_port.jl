using DataFrames: Vector
using Base: vect
using DataFrames
using Dates
using DataFramesMeta
using Statistics
using Lazy: @>
using ShiftedArrays
using BenchmarkTools
using Arrow
using Pipe

using DataStructures,JSON3

using Redis: RedisConnection, open_pipeline, lpush, read_pipeline, disconnect , smembers, hgetall, get, rpop, hget, sadd

println("ports/simulation_port.jl")