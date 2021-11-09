using Dates, StructTypes

mutable struct RedisSettings
    redis_host::String
end

mutable struct JuliaSettings
end

mutable struct AWSSettings
end

mutable struct Kuber8sSettings
end

mutable struct SysSettings
    redis_settings::RedisSettings
end

#JSON settings
StructTypes.StructType(::Type{Kuber8sSettings}) = StructTypes.Struct()
StructTypes.StructType(::Type{AWSSettings}) = StructTypes.Struct()
StructTypes.StructType(::Type{JuliaSettings}) = StructTypes.Struct()
StructTypes.StructType(::Type{RedisSettings}) = StructTypes.Struct()
StructTypes.StructType(::Type{SysSettings}) = StructTypes.Struct()

println("utils/sys_settings_util.jl")