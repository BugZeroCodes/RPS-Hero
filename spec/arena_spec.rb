require_relative '../lib/arena'
RSpec.describe 'Arena' do

  let(:hero1) { Hero.new('Jeff', 140, 150, 45, 56) }
  let(:hero2) { Hero.new('Blake', 190, 200, 45, 56) }
  let(:mak) { Hero.new('The Masked Man', 10000, 10000, 100, 900) }
  let(:arena) { Arena.new(hero1, hero2) }

  it 'initializes 2 heroes' do
    expect(arena).to be_an_instance_of(Arena)
  end
  it 'makes Jeff attack Blake' do
    arena.apply_damage(:hero1)
    expect(hero2.health).to eq(145)
  end
  it 'makes Blake attack Jeff' do
    arena.apply_damage(:hero2)
    expect(hero1.health).to eq(95)
  end
  it 'has no winners because both heroes are still alive' do
    expect(arena.winner).to eq(nil)
  end
  it "checks if Blake won" do
    4.times do
      arena.apply_damage(:hero2)
    end
    expect(arena.winner).to eq(hero2.name)
  end
  it 'checks if Jeff won' do
    5.times do
      arena.apply_damage(:hero1)
    end
    expect(arena.winner).to eq(hero1.name)
  end
end
