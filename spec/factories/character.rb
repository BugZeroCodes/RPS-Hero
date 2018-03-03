FactoryBot.define do
  factory :character do
    name ''
    health 10
    max_health 10
    power 4
    armor 0
    initialize_with { new(name: name, health: health, max_health: max_health,
       power: power, armor: armor) }
  end
end
