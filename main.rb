require_relative 'grid'
require_relative 'view'
require_relative 'rover'

view = View.new
width = view.get_grid_width
height = view.get_grid_height

grid = Grid.new(width, height)
grid.print_size_of_mars

view.find_rover1
view.move_rover1
view.did_rover1_fall_off_of_mars?(width, height)

view.find_rover2
view.move_rover2
view.did_rover2_fall_off_of_mars?(width, height)

view.rover_collision?

view.continue_mission?
