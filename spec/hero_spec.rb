require_relative '../lib/hero.rb'

RSpec.describe 'Hero' do

  let(:reginald) { Hero.new(name: 'Reginald', health: 100, max_health: 100, power: 45, armor: 30) }
  let(:tom) { Hero.new(name: "Tom", health: 345, max_health: 345, power: 45, armor: 30) }
  let(:jeff) { Hero.new(name: 'Jeff', health: 100, max_health: 100, power: 6, armor: 30) }
  let(:blake) { Hero.new(name: 'Blake', health: 190, max_health: 100, power: 45, armor: 56) }

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
  it "recieves damage" do
    jeff.receive_damage(20)
    expect(jeff.health).to eq(80)
  end
  it "receives fatal damage" do
    jeff.receive_damage(170)
    expect(jeff.health).to eq(0)
  end
end
