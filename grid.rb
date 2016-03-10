class Grid
  attr_reader :width, :height

  def initialize(grid_width, grid_height)
    @width = grid_width
    @height = grid_height
  end

  def print_size_of_mars
    puts "The size of Mars is #{@width}km by #{@height}km"
    puts ""
  end

end
