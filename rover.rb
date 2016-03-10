class Rover

  attr_reader :id
  attr_accessor :x, :y, :direction

  @@rovers = []
  @@id = 1


  def initialize(id, x, y, direction)
    @id = id
    @x = x.to_i
    @y = y.to_i
    @direction = direction.upcase
    @compass = ["N", "E", "S", "W"]
    
    if @direction == "E"
      turn(1)
    elsif @direction == "S"
      turn(2)
    elsif @direction == "W"
      turn(3)
    end

  end

  def self.create(starting_x, starting_y, starting_direction)
    new_rover = Rover.new(@@id, starting_x, starting_y, starting_direction)
    @@rovers << new_rover
    @@id += 1
  end

  def self.get(id)
    @@rovers.find { |rover| rover.id == id }
  end

  def instruct (instructions)
    instructions = instructions.split('')

    instructions.each do |instruction|
      instruction.downcase

      if instruction == "l"
        turn("l")
      elsif instruction == "r"
        turn("r")
      else instruction == "m"
        move
      end
    end
    puts ""
    @direction ||= @compass[0]
    return self
  end


  private

  def turn(arg)

    if arg==("r")
      @compass.rotate!(1)
    elsif arg==("l")
      @compass.rotate!(-1)
    else
      @compass.rotate!(arg)
    end
  end

  def move
    if @compass[0] == "N"
      @y += 1
    elsif @compass[0] == "E"
      @x += 1
    elsif @compass[0] == "S"
      @y -= 1
    elsif @compass[0] == "W"
      @x -= 1
    else
      puts "Bogus Input!"
    end
  end

end
