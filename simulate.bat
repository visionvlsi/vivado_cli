@echo off
set OUTPUT_DIR=output_folder

:: Create the output directory if it doesn't exist
if not exist %OUTPUT_DIR% mkdir %OUTPUT_DIR%

:: Redirect Vivado's working directory for full isolation
pushd %OUTPUT_DIR%

cmd /c xvlog -sv ..\withThis.sv
cmd /c xelab class_example
cmd /c xsim work.class_example -R -log simulation.log

:: Return to the original directory
popd
