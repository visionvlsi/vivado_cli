# vivado_cli
This repository aim is to collect all possible ways to run vivado in CLI : Command Line Interface

#### In PowerShell

Inside Powershell use the following:

 powershell -ExecutionPolicy Bypass -File .\run_simulation.ps1

 [Refer here for run_simulation.ps1](https://github.com/visionvlsi/vivado_cli/blob/main/run_simulation.ps1)

 #### In the cmd window

In the cmd terminal type the file name run_simulation.bat

 [Refer here for run_simulation.bat file](https://github.com/visionvlsi/vivado_cli/blob/main/run_simulation.bat)

 #### If using tcl file
vivado -mode tcl -source run_vivado_sim.tcl
