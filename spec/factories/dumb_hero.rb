FactoryBot.define do
  factory :dumb_hero, parent: :hero do

    health 80
    max_health 80
    power 15
    armor 20

    factory :rocky do
      name 'Rocky'
      throws :rock
    end

    factory :flat_dillhead do
      name 'Flatty NimheadRocky'
      throws :paper
    end

    factory :scissy do
      name 'Scissy'
      throws :scissors
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
