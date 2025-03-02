set sourceFile=ex1.sv
set moduleName=foreach_example
cmd /c xvlog -sv %sourceFile%
cmd /c xelab %moduleName%
cmd /c xsim work.%moduleName% -R
echo Simulation completed successfully.
pause
