require_relative '../lib/hero.rb'

RSpec.describe 'Hero' do

  let(:reginald) { Hero.new('Reginald', 100, 100, 45, 30) }
  let(:tom) { Hero.new("Tom", 345, 345, 45, 30) }
  let(:jeff) { Hero.new('Jeff', 100, 100, 6, 30) }
  let(:blake) { Hero.new('Blake', 190, 100, 45, 56) }

  it 'has health' do
    expect(reginald.health).to eq(100)
  end
  it 'has max health' do
    expect(tom.max_health).to eq(345)
  end
  it 'has power' do
    expect(jeff.power).to eq(6)
  end
  it 'has armor/power resistance' do
    expect(blake.armor).to eq(56)
  end
  it 'has a name' do
    expect(blake.name).to eq('Blake')
  end
end
