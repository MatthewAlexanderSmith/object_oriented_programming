require_relative 'grid'
require_relative 'rover'


class View

  def get_grid_width
    puts "Enter a grid width: "
    gets.chomp.to_i
  end

  def get_grid_height
    puts "Enter a grid height: "
    height = gets.chomp.to_i
    puts ""
    height
  end

  def find_rover1
    puts "Where on mars is rover 1?(x,y,orientation):"
    array = gets.chomp.to_s.split(',')
    puts ""
    Rover.create(array[0],array[1],array[2])
  end

  def find_rover2
    puts "Where on mars is rover 2?(x,y,orientation):"
    array = gets.chomp.to_s.split(',')
    puts ""
    Rover.create(array[0],array[1],array[2])
  end

  def move_rover1
    puts "Enter move instructions for Rover 1:"
    instructions = gets.chomp
    rover1 = Rover.get(1).instruct(instructions)
    puts "Rover #{rover1.id} has a new position of #{rover1.x}, #{rover1.y}, #{rover1.direction}"
    puts ""
  end

  def move_rover2
    puts "Enter instructions for Rover 2:"
    instructions = gets.chomp
    rover2 = Rover.get(2).instruct(instructions)
    puts "Rover #{rover2.id} has a new position of #{rover2.x}, #{rover2.y}, #{rover2.direction}"
    puts ""
  end

  def all_rovers_present_location
    puts "Rover #{Rover.get(1).id} is presently at #{Rover.get(1).x} #{Rover.get(1).y} #{Rover.get(1).direction}"
    puts "Rover #{Rover.get(2).id} is presently at #{Rover.get(2).x} #{Rover.get(2).y} #{Rover.get(2).direction}"
    puts ""
  end

  def rover_select_handler
    rover_select = gets.chomp.to_s
    if rover_select == "1"
      move_rover1
      rover_collision?
    else
      move_rover2
      rover_collision?
    end
  end

  def rover_collision?
    rover1_coordinates = []
    rover2_coordinates = []

    rover1_coordinates << Rover.get(1).x
    rover1_coordinates << Rover.get(1).y

    rover2_coordinates << Rover.get(2).x
    rover2_coordinates << Rover.get(2).y

    if rover1_coordinates == rover2_coordinates
      puts "Rovers collided!!!!!"
      puts "Exiting program"
      exit
    else
      puts "No Collision"
    end
  end

  def did_rover1_fall_off_of_mars?(width, height)

    if (Rover.get(1).x > width)|| (Rover.get(1).x < 0)|| (Rover.get(1).y > height)|| (Rover.get(1).y < 0)
        puts "Rover 1 fell off mars!!"
        puts ""
    else
        puts "Rover 1 still on mars :)"
        puts ""
    end

  end


  def did_rover2_fall_off_of_mars?(width, height)

    if (Rover.get(2).x > width)|| (Rover.get(2).x < 0)|| (Rover.get(2).y > height) || (Rover.get(2).y < 0)
        puts "Rover 2 fell off mars!!"
        puts ""
    else
        puts "Rover 2 still on mars :)"
        puts ""
    end

  end



  def continue_mission?
    puts "Would you like to move either rover to a new location? (y or n):"
    answer = gets.chomp.to_s.downcase
    while answer == 'y'
      system "clear"
      all_rovers_present_location
      puts "Which rover would you like to move?(1 or 2):"
      rover_select_handler
      continue_mission?
    end
      puts "Mission Complete!"
      puts "Exiting program"
      exit
  end

end
