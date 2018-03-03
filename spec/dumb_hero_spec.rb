RSpec.describe 'DumbHero' do

  let(:rocky) { build(:rocky) }
  let(:flat_dillhead) { build(:flat_dillhead) }
  let(:scissy) { build(:scissy) }

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
