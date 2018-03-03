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
until ['1','2','3','J','B','GC'].include? choice
  puts 'Choose your Hero: 1 for Jeff, 2 for Blake, and 3 for Glassed Cannon.'
  choice = gets.chomp
end

playing_hero = case choice
when '1', 'J'
  jeff
when '2', 'B'
  blake
when '3', 'GC'
  glassed_cannon
end

puts "You chose #{playing_hero.name}"
monster = Monster.new(name: 'Rat', health: 23, max_health: 23, power: 10, armor: 0)
arena = Arena.new(character1: playing_hero, character2: monster)
puts 'Level 1: Rat'
arena.start_match
