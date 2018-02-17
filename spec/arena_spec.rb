RSpec.describe 'Arena' do

  let(:hero1) { DumbHero.new(name: 'Jeff', health: 140, max_health: 150, power: 45, armor: 56, throws: :scissors) }
  let(:hero2) { DumbHero.new(name: 'Blake', health: 190, max_health: 200, power: 45, armor: 56, throws: :rock) }
  let(:mak) { Hero.new(name: 'The Masked Man', health: 10000, max_health: 10000, power: 1476500, armor: 900) }
  let(:arena) { Arena.new(character1: hero1, character2: hero2) }

  let(:rocky) { DumbHero.new(name: 'Rocky', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :rock) }
  let(:flat_dillhead) { DumbHero.new(name: 'Flatty Nimhead Nimrod', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :paper) }
  let(:scissy) { DumbHero.new(name: 'Scissy', health: 80,
    max_health: 80, power: 15, armor: 20, throws: :scissors) }
  let(:test_monster) { Monster.new(name: 'Rat Leader', health: 439,
     max_health: 439, power: 56, armor: 1) }
  let(:the_arena) { Arena.new(character1: test_monster, character2: rocky) }

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
  it "checks whether Blake wins" do
    arena.start_match
    expect(arena.winner).to eq(hero2.name)
  end
  it 'makes sure the starting history is blank' do
    expect(arena.history).to eq([])
  end
  it "makes a DumbHero fight a Monster" do
    the_arena.start_match
    expect(arena.winner).not_to be_nil # Not nil
  end
end
