#The size of the plateau is constant
#Therefore assign the size of the plateau to a constant.
puts "Please enter the size of the plateau (x y)"
PLATEAU = gets.split(" ")
puts ""
#puts "#{PLATEAU[0]} #{PLATEAU[1]}\n\r"

puts "Please enter the present location and facing orientation
of Rover 1 (x  y orientation)"
rover_start_input = gets.chomp.split(" ")
rover1 = Rover.new(y = "#{rover_start_input[0]}", x = "#{rover_start_input[1]}", orient = "#{rover_start_input[2]}" )

puts "Please enter the present location and facing orientation
of Rover 2 (x  y orientation)"
rover_start_input = gets.chomp.split(" ")
rover2 = Rover.new(y = "#{rover_start_input[0]}", x = "#{rover_start_input[1]}", orient = "#{rover_start_input[2]}" )

p rover1.instance_variable_get(:@location)
p rover2.instance_variable_get(:@location)

class Rover

  # attr_accessor :x, :y, :orient

  def initialize(x, y, orient)
    @x = x.to_i
    @y = y.to_i
    @orient = orient
    self.read_instruction
  end

  def read_instruction

    puts "Please enter movement instructions for the Rover
    any combination of L,R and M without spaces"
    rover_instruct = gets.chomp.split("")
    #puts "#{@rover_instruct}" #Monitor Intructions
    rover_instruct.each do |i|
      i = i.upcase
      if i == "L"
        turn(i)
      elsif i == "R"
        turn(i)
      elsif i == "M"
        move
      else
        puts "only accepts L, R, or M"
      end
      # self.new_location
    end
    self.new_location
  end

  def move
    if @orient == "N"
        @y += 1
    elsif @orient == "E"
        @x += 1
    elsif @orient == "S"
        @y -= 1
    elsif @orient == "W"
        @x -= 1
    end
  end

  def turn(i)
    if (i == "L") && (@orient == "N")
        @orient = "W"
    elsif (i == "L") && (@orient == "W")
        @orient = "S"
    elsif (i == "L") && (@orient == "S")
        @orient = "E"
    elsif (i == "L") && (@orient == "E")
        @orient = "N"
    elsif (i == "R") && (@orient == "N")
        @orient = "E"
    elsif (i == "R") && (@orient == "E")
        @orient = "S"
    elsif (i == "R") && (@orient == "S")
        @orient = "W"
    elsif (i == "R") && (@orient == "W")
        @orient = "N"
    end
  end

  def new_location
    @location = "#{@x} #{@y} #{@orient}"
  end
end


################################################################################
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


# puts "The final position of Rover 1 is #{rover1_pos_finish}"
# puts "The final position of Rover 1 is #{rover2_pos_finish}"



# rover_start.each do |k, v|
#     puts "#{k} #{v}"
# end


#THIS IS ONE WORKING SOLUTION#
    # rover_instruct.each do |i|
    #   i = i.upcase
    #   puts i
    #   if (i == "L") && (@orient == "N")
    #       @orient = "W"
    #   elsif (i == "L") && (@orient == "W")
    #       @orient = "S"
    #   elsif (i == "L") && (@orient == "S")
    #       @orient = "E"
    #   elsif (i == "L") && (@orient == "E")
    #       @orient = "N"
    #   elsif (i == "R") && (@orient == "N")
    #       @orient = "E"
    #   elsif (i == "R") && (@orient == "E")
    #       @orient = "S"
    #   elsif (i == "R") && (@orient == "S")
    #       @orient = "W"
    #   elsif (i == "R") && (@orient == "W")
    #       @orient = "N"
    #   elsif (i == "M") && (@orient == "N")
    #       @y += 1
    #   elsif (i == "M") && (@orient == "E")
    #       @x += 1
    #   elsif (i == "M") && (@orient == "S")
    #       @y -= 1
    #   elsif (i == "M") && (@orient == "W")
    #       @x -= 1
    #   else
    #     puts "Check Shit"
    #   end
#END OF WORKING SOLUTION#

#VERIFY SYNTAX OF CASE LOOP#
      # case i
      #   when ("L") && (@orient = "N")
      #     @orient = "W"
      #   when ("L") && (@orient = "W")
      #     @orient = "S"
      #   when ("L") && (@orient = "S")
      #     @orient = "E"
      #   when ("L") && (@orient = "E")
      #     @orient = "N"
      #   when ("R") && (@orient == "N")
      #     @orient = "E"
      #   when "R" && (@orient == "E")
      #     @orient = "S"
      #   when "R" && (@orient == "S")
      #     @orient = "W"
      #   when "R" && (@orient == "W")
      #     @orient = "N"
      #   when "M" && (@orient == "N")
      #     @y += 1
      #   when "M" && (@orient == "E")
      #     @x += 1
      #   when "M" && (@orient == "S")
      #     @y -= 1
      #   when "M" && (@orient == "W")
      #     @x -= 1
      # else
      #   puts "Check shit"
# END OF CASE LOOP EXAMPLE#

    # end

    #   rover_start.each do |k, v|
    #     puts "#{k} #{v}"
    #   end
    # end


    # puts "#{rover_instruct}"
    #
    # rover_instruct do |i|
    #   puts "#{rover_instruct[i]}"
    # end


    # rover_start = {
    # :x      => @x,
    # :y      => @y,
    # :orient => @orient
    # }
