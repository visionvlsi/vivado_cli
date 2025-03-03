@echo off
setlocal enabledelayedexpansion

:: Check if both arguments are provided
if "%~1"=="" (
    echo Usage: run_vivado_sim.bat ^<design_file^> ^<top_module^>
    exit /b 1
)
if "%~2"=="" (
    echo Usage: run_vivado_sim.bat ^<design_file^> ^<top_module^>
    exit /b 1
)

:: Assign arguments to variables safely
set "sourceFile=%~1"
set "moduleName=%~2"

:: Display received arguments
echo Compiling Verilog source: "%sourceFile%"
cmd /c xvlog -sv "%sourceFile%"

echo Elaborating top module: "%moduleName%"
cmd /c xelab "%moduleName%"

echo Running simulation...
cmd /c xsim work.%moduleName% -R

echo Simulation completed successfully.
pause
