RSpec.describe 'DumbHero' do

  let(:rocky) { DumbHero.new(name: 'Rocky', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :rock) }
  let(:flat_dillhead) { DumbHero.new(name: 'Flatty Nimhead', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :paper) }
  let(:scissy) { DumbHero.new(name: 'Scissy', health: 80,
    max_health: 80, power: 15, armor: 20, throws: :scissors) }

  it 'is a Hero' do
    expect(rocky).to be_a(Hero)
  end

  it 'always throws rock' do
    100.times do
      expect(rocky.get_throw).to eq(:rock)
    end
  end
  it 'always throws paper' do
    100.times do
      expect(flat_dillhead.get_throw).to eq(:paper)
    end
  end
  it 'always throws scissors' do
    100.times do
      expect(scissy.get_throw).to eq(:scissors)
    end
  end
end
