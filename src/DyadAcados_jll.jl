# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule DyadAcados_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("DyadAcados")
JLLWrappers.@generate_main_file("DyadAcados", Base.UUID("e3e99909-f26c-504a-91f0-9b128e70b05d"))
end  # module DyadAcados_jll
