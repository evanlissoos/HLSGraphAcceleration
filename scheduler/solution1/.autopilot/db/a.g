#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/parallels/Documents/ece527/final_project/scheduler/solution1/.autopilot/db/a.g.bc ${1+"$@"}
