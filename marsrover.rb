# I/O MAPPING
# INPUTS
# 1. plateau_size
#     Co-ordinates of upper right corner of plateau
#
# 2. rover1_pos_start
#     2 integers and letter separated by spaces
#     x, y coordinates and orientation
#
# 3. rover1_instruct
#     Series of instructions telling the rover
#     hoe to explore the plateau
#
# 4. rover2_pos_start
#     2 integers and letter separated by spaces
#     x, y coordinates and orientation
#
# 5. rover2_instruct
#     Series of instructions telling the rover
#     hoe to explore the plateau
#
# OUTPUTS
# 1. rover1_pos_finish
#     Co-ordiantes of rover 1 after executing the instruct commands
#
# 2. rover2_pos_finish
#     Co-ordiantes of rover 1 after executing the instruct commands
#

class Rover
  def initialize(x, y, orient)
    @x = x
    @y = y
    @orient = orient
  end

  attr_accessor :x :y :orient
end
#When instantiating a new Rover Class
#Pass the present location of the Rover
#To the method .new
rover1 = Rover.new(FILL_IN WITH PRESENT LOCATION)
rover2 = Rover.new(FILL_IN WITH PRESENT LOCATION)

#PROGRAM INPUTS
puts "Please enter the size of the plateau (x, y)"
#The size of the plateau is constant
#Therefore assign the size of the plateau to a constant.
PLATEAU = gets.chomp

puts "Please enter the present location and facing orientation\n
      of Rover 1 \n\r (x, y, (N,S,E, or W))"
rover1_pos_start = gets.chomp

puts "Please enter movement instructions for Rover 1\n\r
      any combination of L,R and M without spaces"
rover1_instruct = gets.chomp

puts "Please enter the present location and facing orientation\n
      of Rover 2 \n\r (x, y, (N,S,E, or W))"
rover2_pos_start = gets.chomp

puts "Please enter movement instructions for Rover 2\n\r
      any combination of L,R and M without spaces"
rover2_instruct = gets.chomp

puts "The final position of Rover 1 is #{rover1_pos_finish}"
puts "The final position of Rover 1 is #{rover2_pos_finish}"
