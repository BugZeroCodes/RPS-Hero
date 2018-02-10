describe 'Character' do

  let(:char) { Character.new(health: 10, max_health: 10, power: 4, armor: 0, name:) }

  expect(char).to be_a(Character)
end
