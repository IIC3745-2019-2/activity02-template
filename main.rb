require_relative 'pokemon'
require_relative 'simulation'

charmander = Pokemon.new('Charmander', 'Fire', 100, 6, 6, 10)
squirtle = Pokemon.new('Squirtle', 'Water', 100, 5, 7, 11)

simulation = Simulation.new(charmander, squirtle)
winner = simulation.run
puts "Winner winner chicken dinner! The winner is: #{winner}"
