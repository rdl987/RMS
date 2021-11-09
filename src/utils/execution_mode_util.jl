
abstract type ExecutionMode end
struct TestMode <: ExecutionMode end
struct ProductionMode <: ExecutionMode end

println("utils/execution_mode_util.jl")

