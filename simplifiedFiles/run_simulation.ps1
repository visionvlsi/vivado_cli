# PowerShell script to automate Xilinx Vivado simulation
$moduleName = "foreach_example"
$sourceFile = "ex5.sv"

# Run xvlog (compilation)
Write-Host "Running xvlog..."
xvlog -sv $sourceFile

# Run xelab (elaboration)
Write-Host "Running xelab..."
xelab $moduleName

# Run xsim (simulation)
Write-Host "Running xsim..."
xsim work.$moduleName -R

Write-Host "Simulation completed successfully."
pause
