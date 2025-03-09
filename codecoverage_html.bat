:: Compile Verilog source files
cmd /c xvlog --sv tb.sv

:: Elaborate with coverage enabled
::cmd /c xelab --coverage line --coverage branch -debug typical -s tb_sim tb
cmd /c xelab tb -cov_db_dir ./xsim.covdb -cov_db_name my_cvrgrp

:: Run simulation
cmd /c xsim work.tb -cov_db_dir ./xsim.covdb -cov_db_name my_cvrgrp --runall

:: Generate coverage report
::cmd /c xcrg -dir ./xsim.covdb -report_dir ./xcrg_report -report_format html
cmd /c xcrg --report_format all -dir ./xsim.covdb -db_name my_cvrgrp -report_dir ./xcrg_report
::cmd /c xcrg -dir ./xsim.covdb -db_name tb_sim -report_dir ./xcrg_report -report_format all

::xcrg -dir ./abc -report_dir def -report_format html
::xcrg -dir ./abc -db_name work.top -report_dir def -report_format html
::xcrg -dir /path/to/abc -db_name work.top -report_dir def -report_format text

:: Optional: Open the generated coverage report
::xdg-open coverage_report.html  # For Linux
  ::# For Windows
::cmd /c start coverage_report.html   
