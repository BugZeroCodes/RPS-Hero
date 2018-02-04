require_relative '../lib/hero.rb'
RSpec.describe 'Hero' do
  it 'has health' do
    expect(Hero.new(100, 100, 45, 30).health).to eq(100)
  end
  it 'has max health' do
    expect(Hero.new(345, 345, 45, 30).max_health).to eq(345)
  end
  it 'has power' do
    expect(Hero.new(100, 100, 6, 30).power).to eq(6)
  end
  it 'has armor/power resistance' do
    expect(Hero.new(100, 100, 45, 56).armor).to eq(56)
  end
end
