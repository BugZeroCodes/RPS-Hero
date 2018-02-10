require '../spec/dumb_hero.rb'

RSpec.describe 'DumbHero' do

  let(:rocky) { DumbHero.new(name: 'Rocky', health: 80, max_health: 80, power: 15, armor: 20, throws: :rock) }
  
  it 'is a Hero' do
    expect(rocky).to be_a(Hero)
  end

  it 'always throws rock' do
    100.times do
      expect(rocky.get_throw).to eq(:rock)
    end
  end
end
