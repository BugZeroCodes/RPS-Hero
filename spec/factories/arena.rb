FactoryBot.define do
  factory :arena do

    character1 build(:scissy)
    character2 build(:monster)

    initialize_with { new(character1: character1, character2: character2) }
  end
end
