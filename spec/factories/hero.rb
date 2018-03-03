FactoryBot.define do
  factory :hero, parent: :character do
    factory :jeff do
      name 'Jeff'
      health 100
      max_health 100
      power 6
    end
  end
end
