@echo off
set sourceFile=ex1.sv
set moduleName=foreach_example

echo Running xvlog...
cmd /c xvlog -sv %sourceFile%
if %ERRORLEVEL% NEQ 0 (
    echo Error in xvlog. Exiting...
    exit /b %ERRORLEVEL%
)

echo Running xelab...
cmd /c xelab %moduleName%
if %ERRORLEVEL% NEQ 0 (
    echo Error in xelab. Exiting...
    exit /b %ERRORLEVEL%
)

echo Running xsim...
cmd /c xsim work.%moduleName% -R
if %ERRORLEVEL% NEQ 0 (
    echo Error in xsim. Exiting...
    exit /b %ERRORLEVEL%
)

echo Simulation completed successfully.
pause
