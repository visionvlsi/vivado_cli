# PowerShell script to automate Xilinx Vivado simulation
$scriptName = "foreach_example"
$sourceFile = "ex1.sv"

# Run xvlog (compilation)
Write-Host "Running xvlog..."
xvlog -sv $sourceFile
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in xvlog. Exiting..."
    exit $LASTEXITCODE
}

# Run xelab (elaboration)
Write-Host "Running xelab..."
xelab $scriptName
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in xelab. Exiting..."
    exit $LASTEXITCODE
}

# Run xsim (simulation) in batch mode
Write-Host "Running xsim..."
xsim work.$scriptName -R
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in xsim. Exiting..."
    exit $LASTEXITCODE
}

Write-Host "Simulation completed successfully."
