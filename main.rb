require_relative 'lib/arena'
require_relative 'lib/bout'
require_relative 'lib/character'
require_relative 'lib/hero'
require_relative 'lib/monster'
require_relative 'lib/dumb_hero'

jeff = Hero.new(name: 'Jeff', health: 140, max_health: 150, power: 45, armor: 56)
blake = Hero.new(name: 'Blake', health: 190, max_health: 200, power: 45, armor: 56)
glassed_cannon = Hero.new(name: 'Glassed Cannon', health: 90, max_health: 90, power: 33, armor: 23)

system('clear')
puts 'Welcome to RPS-Hero!'
puts 'Press Enter to continue.'
gets.chomp
system('clear')
puts 'Choose your Hero: 1 for Jeff, 2 for Blake, and 3 for Glassed Cannon.'
choice = gets.chomp
while !choice == '1' && !choice == '2' && !choice == '3'
  if choice == '1'
    playing_hero = jeff
  elsif choice == '2'
      playing_hero = blake
  elsif choice == '3'
    playing_hero = glassed_cannon
  else
    puts 'Choose your Hero: 1 for Jeff, 2 for Blake, and 3 for Glassed Cannon.'
    choice = gets.chomp
  end
end
