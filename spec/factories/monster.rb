FactoryBot.define do
  factory :monster do
    name 'Ratt a tat'
    health 100
    max_health 100
    power 23
    armor 0
  end

  initialize_with do
    Monster.new(name: name, health: health,
    max_health: max_health, power: power, armor: armor)
  end
end
