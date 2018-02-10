require_relative '../lib/character'
describe 'Character' do

  let(:char) { Character.new(health: 10, max_health: 10, power: 4, armor: 0, name: '') }

  it "checks if char is a character" do
    expect(char).to be_a(Character)
  end
end
