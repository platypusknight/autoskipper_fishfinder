Playing with updates for the boat. The initial aspects of interest include

1. AutoSkipper - the control agorithms and required support to be able to control an electric trolling motor to follow a programmed GPS route. The initial is just following a route, but the unltimate goal is to set an aribtrary route on a touchscreen and then follow that route, except tracking obstacles with radar and plotting course around them, as well as monitoring underwater conditions for the best route.
2. Fishfinder - this is just for the fun of learning sonar DSP. The idea is to incorpoarate a fishfinder with the GPS tracking and have single control system.  Initial is just to march bottom and object in water, but goals include to be able to 3d map water body floor and be able to accurately handle sonar beamforming.

Modules in this project are named after characters from the movie finding nemo

DSP modules
pktasff_bruce   -- Sonar DSP modeling
pktasff_anchor  -- Sonar DSP FPGA code
pktasff_chum    -- Autoskipper DSP modeling
pktasff_blenney -- Autoskipper DSP FPGA code