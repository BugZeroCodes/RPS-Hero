RSpec.describe 'Hero' do

  let(:jeff) { Hero.new(name: 'Jeff', health: 100, max_health: 100, power: 6) }

  it 'is a kind of Character' do
    expect(jeff).to be_kind_of(Character)
  end
end
