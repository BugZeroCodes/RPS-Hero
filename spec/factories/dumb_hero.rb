FactoryBot.define do
  factory :dumb_hero, parent: :hero do

    factory :rocky do
      name ''
      health 80
      max_health 80
      power 15
      armor 20
    end
  end
end
