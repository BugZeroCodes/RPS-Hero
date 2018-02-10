require_relative '../lib/hero.rb'

RSpec.describe 'Hero' do

  let(:jeff) { Hero.new(name: 'Jeff', health: 100, max_health: 100, power: 6) }

  it 'is a kind of Character' do
    expect(jeff).to be_kind_of(Character)
  end
  
  it 'has a name' do
    expect(jeff.name).to eq('Jeff')
  end
  
  context 'health' do
    it 'has health' do
      expect(jeff.health).to eq(100)
    end
    
    it 'has max health' do
      expect(jeff.max_health).to eq(100)
    end
  end
  
  it 'has power' do
    expect(jeff.power).to eq(6)
  end

  context 'armor' do
    it 'has armor/power resistance' do
      expect(jeff.respond_to?(:armor)).to be true
    end
    it "expects default value of hero's armor to be 5" do
      expect(jeff.armor).to eq(5)
    end
  end
  
  context 'damage' do
    it "recieves damage" do
      jeff.receive_damage(20)
      expect(jeff.health).to eq(80)
    end
    it "receives fatal damage" do
      jeff.receive_damage(170)
      expect(jeff.health).to eq(0)
    end
  end
end
