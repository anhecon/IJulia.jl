include("base64.jl")
include("multimedia.jl")
include("IJulia.jl")
include("inline.jl")
include("wrappers.jl")

using Multimedia
using IPythonDisplay
push_display(InlineDisplay())

using IJulia

println("Starting kernel event loops.")
for sock in (IJulia.requests, IJulia.control)
    IJulia.eventloop(sock)
end

wait()