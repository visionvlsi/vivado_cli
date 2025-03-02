# Get command-line arguments
set design_file [lindex $argv 0]
set top_module [lindex $argv 1]

# Check if arguments are provided
if { $design_file == "" || $top_module == "" } {
    puts "Usage: vivado -mode tcl -source run_vivado_sim.tcl <design_file> <top_module>"
    exit
}

# Run simulation flow and print output
puts "Compiling Verilog source: $design_file"
puts [exec xvlog --sv $design_file]

puts "Elaborating top module: $top_module"
puts [exec xelab $top_module]

puts "Starting simulation for: work.$top_module"
puts [exec xsim work.$top_module -R]

exit
