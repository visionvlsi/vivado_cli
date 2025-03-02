# Define variables
set design_file "ex1.sv"
set top_module "foreach_example"

# Run simulation flow and print output
puts "Compiling Verilog source..."
puts [exec xvlog --sv $design_file]

puts "Elaborating design..."
puts [exec xelab $top_module]

puts "Starting simulation..."
puts [exec xsim work.$top_module -R]

exit
