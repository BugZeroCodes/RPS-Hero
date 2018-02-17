RSpec.describe 'Arena' do

  let(:hero1) { Hero.new(name: 'Jeff', health: 140, max_health: 150, power: 45, armor: 56) }
  let(:hero2) { Hero.new(name: 'Blake', health: 190, max_health: 200, power: 45, armor: 56) }
  let(:mak) { Hero.new(name: 'The Masked Man', health: 10000, max_health: 10000, power: 1476500, armor: 900) }
  let(:arena) { Arena.new(character1: hero1, character2: hero2) }

  it 'initializes 2 heroes' do
    expect(arena).to be_an_instance_of(Arena)
  end
  it 'makes Jeff attack Blake' do
    arena.apply_damage(:character1)
    expect(hero2.health).to eq(145)
  end
  it 'makes Blake attack Jeff' do
    arena.apply_damage(:character2)
    expect(hero1.health).to eq(95)
  end
  it 'has no winners because both heroes are still alive' do
    expect(arena.winner).to eq(nil)
  end
  it "checks if Blake won" do
    4.times do
      arena.apply_damage(:character2)
    end
    expect(arena.winner).to eq(hero2.name)
  end
  it 'checks if Jeff won' do
    5.times do
      arena.apply_damage(:character1)
    end
    expect(arena.winner).to eq(hero1.name)
  end
end
