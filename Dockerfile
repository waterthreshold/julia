FROM julia:latest
ADD julia.jl /
RUN  julia julia.jl
