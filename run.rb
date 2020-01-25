require_relative './config/environment'
require_relative './lib/helpermethods'
prompt = TTY::Prompt.new

# binding.pry
logo
main_menu

p1, p2, c, d = start_game
p1.show_hand