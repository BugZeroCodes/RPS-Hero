RSpec.describe do
  let(:rat) { Monster.new(name: 'Ratt a tat', health: 100, max_health: 100,
     power: 23, armor: 0)}
  it 'has armor' do
    expect(rat.armor).to eq(0)
  end
  it "is a character" do
    expect(rat).to be_a(Character)
  end
end
