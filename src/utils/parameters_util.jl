using Dates, StructTypes

mutable struct HpRow
    country::String 
    maturity_floor::Int64
    amount_floor::Int64
    hp::Vector{Int64}
end

mutable struct RepoAddonParameters
    doubleTailEnabled::Bool
    expectedShortFallEnabled::Bool
    spectralMeasuresEnabled::Bool
    lookBackPeriod::Dict{String,Int}
    scalingWindow::Dict{String,Int}
    smoothingFactor::Dict{String,Float64}
    confidenceLevel::Dict{String,Float64}
    TTPCalStandard::Dict{String,String}
    holdingPeriod::Vector{HpRow}
    OISHoldingPeriod::Vector{Int}
    activeNodes::Vector
    maturitiesFloorArray::Dict{String,Vector{Int}}
    nominalFloorArray::Dict{String,Vector{Int}}
end

mutable struct ScaUnscaParameters
    lookBackPeriod::Dict{String,Int}
    scalingWindow::Dict{String,Int}
    smoothingFactor::Dict{String,Float64}
    confidenceLevel::Dict{String,Float64}
    decorrelationLookBackPeriod::Dict{String,Int}
    decorrelationScalingWindow::Dict{String,Int}
    decorrelationSmoothingFactor::Dict{String,Float64}
    decorrelationConfidenceLevel::Dict{String,Float64}
end

mutable struct WhatIfScaUnscaParameters
    scaUnscaParameters::ScaUnscaParameters
    holdingPeriod::Dict{String,Int64}
end

mutable struct WhatIfParameters
    doubleTailEnabled::Bool
    riskSpectralMeasureMultiplier::Float64
    activeNodes::Dict{String,Vector}
    scenarioType::Dict{String,WhatIfScaUnscaParameters}
    TTPCalStandard::Dict{String,String}
    ewmaScalingWindow::Dict{String,Int}
    ewmaLookBackPeriod::Dict{String,Int}
    ewmaLambda::Dict{String,Float64}
end

mutable struct Parameters
    evaluation_date::Dates.Date
    whatIfParameters::WhatIfParameters
    repoParam::RepoAddonParameters
    issuerTransCode::Dict{String,String}
end

#JSON settings
StructTypes.StructType(::Type{HpRow}) = StructTypes.Struct()
StructTypes.StructType(::Type{RepoAddonParameters}) = StructTypes.Struct()
StructTypes.StructType(::Type{ScaUnscaParameters}) = StructTypes.Struct()
StructTypes.StructType(::Type{WhatIfScaUnscaParameters}) = StructTypes.Struct()
StructTypes.StructType(::Type{WhatIfParameters}) = StructTypes.Struct()
StructTypes.StructType(::Type{Parameters}) = StructTypes.Struct()

println("utils/parameters_util.jl")