#!/bin/bash
# IMPORTANT: this file must always have LF line endings 
# in order to work on Docker
display_usage() {
    echo -e "\nUsage: $0 [RT|SIM] [julia params]\n"
}

if [ $# -eq 0 ]; then
    echo "Illegal number of parameters"
    display_usage
    exit 2
fi

if [[ ("$1" != "RT") && ("$1" != "SIM") ]]; then
    echo "First parameter must be one of 'RT' (for Real Time) and 'SIM' (for Simulation)"
    display_usage
    exit 2
fi

if [[ "$1" == "RT" ]]; then
    echo "Real-Time"
    echo ${@:2}
    julia --project ./src/rt/margin_worker_rt.jl --test_mode prod ${@:2}
    exit 0
fi

if [[ "$1" == "SIM" ]]; then
    echo "Simulation"
    echo ${@:2}
    julia --project ./src/rt/margin_simulation_worker_rt.jl --test_mode prod ${@:2}
    exit 0
fi