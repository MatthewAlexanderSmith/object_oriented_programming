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
    # puts "#{x} #{y} #{orient}"
    @x = x.to_i
    @y = y.to_i
    @orient = orient

    rover_start = {
    :x      => @x,
    :y      => @y,
    :orient => @orient
    }

    puts "Please enter movement instructions for the Rover
    # any combination of L,R and M without spaces"
    @rover_instruct = gets.chomp.split("")
    puts "#{@rover_instruct}"
    self.read_instruction(@rover_instruct)
  end

  # attr_accessor :x, :y, :orient

#SETTING PROGRAM INPUTS
#The size of the plateau is constant
#Therefore assign the size of the plateau to a constant.
  # puts "Please enter the size of the plateau (x y)"
  # PLATEAU = gets.chomp.split(" ")
  # puts "#{PLATEAU}"
  # PLATEAU.each { |i| puts i }
  #
  # puts "Please enter the present location and facing orientation
  # of the Rover (x  y orientation)"
  # rover_start_input = gets.chomp.split(" ")
  # puts "#{@x} #{@y} #{@orient}"
  # @x = 20
  # @y = 30
  # @orient = "N"

    def read_instruction(rover_instruct)
        puts "read_instruction method being called"

      rover_instruct.each do |i|
        i.upcase
        if i == "L"
          turn(i)
        elsif i == "R"
          turn(i)
        elsif i == "M"
          move(i)
        else
          puts "only accepts L, R, or M"
        end
        self.new_location
      end
    end

    def move(i)
      if    (i == "M") && (@orient == "N")
              @y += 1
      elsif (i == "M") && (@orient == "E")
              @x += 1
      elsif (i == "M") && (@orient == "S")
              @y -= 1
      elsif (i == "M") && (@orient == "W")
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
    puts "#{@x}, #{@y}, #{@orient}"
  end

end
#When instantiating a new Rover Class
#Pass the present location of the Rover
#To the method .new

puts "Please enter the present location and facing orientation
of the Rover 1 (x  y orientation)"
rover_start_input = gets.chomp.split(" ")
rover1 = Rover.new(y = "#{rover_start_input[0]}", x = "#{rover_start_input[1]}", orient = "#{rover_start_input[2]}" )
# rover2 = Rover.new(3,4,"N")




  # puts "Please enter the present location and facing orientation
  # of Rover 2 (x, y, (N,S,E, or W))"
  # rover2_pos_start = gets.chomp.split(" ")
  # puts "#{rover2_pos_start}"
  #
  # puts "Please enter movement instructions for Rover 2
  # any combination of L,R and M without spaces"
  # rover2_instruct = gets.chomp.split(" ")
  # puts "#{rover2_instruct}"



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
    #
    #
