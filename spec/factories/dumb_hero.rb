FactoryBot.define do
  factory :dumb_hero, parent: :hero do

    factory :rocky do
      name ''
      health 80
      max_health 80
      power 15
      armor 20
      throws :rock
    end

    initialize_with do
      DumbHero.new(name: name,
          health: health,
          max_health: max_health,
          power: power,
          armor: armor,
          throws: throws)
    end
  end
end
