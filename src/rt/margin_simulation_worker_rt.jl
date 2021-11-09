using Base: Float64
using ArgParse, DataFrames, DataFramesMeta, Arrow, JSON3, AWSS3, AWS, Pipe


#TODO valutare dove inserire gli include
include("../utils/command_line_util.jl")
include("../utils/execution_mode_util.jl")
include("../utils/utils.jl")
include("../utils/sys_settings_util.jl")
include("../utils/json_utils.jl")
include("../ports/margins_port.jl")
include("../ports/mtm_port.jl")
include("../ports/idiosync_port.jl")
include("../ports/positions_port.jl")
include("../ports/parameters_port.jl")
include("../ports/repo_add_on_port.jl")
include("../utils/repo_add_on_parameters_util.jl")
include("../ports/flow_mapping_port.jl")
include("../ports/what-if_scenario_port.jl")
include("../ports/workflow_port.jl")

include("./repo_add_on_calculation_rt.jl")
include("./flow_mapping_rt.jl")
include("./idiosync_rt.jl")
include("./mtm_rt.jl")
include("./what-if_rt.jl")

include("../ports/simulation_port.jl")


println("margin_simulation_worker_rt.jl")