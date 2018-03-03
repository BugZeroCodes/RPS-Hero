RSpec.describe 'Arena' do
  #Heroes
  let(:jeff) { DumbHero.new(name: 'Jeff', health: 140, max_health: 150, power: 45, armor: 56, throws: :scissors) }
  let(:blake) { DumbHero.new(name: 'Blake', health: 190, max_health: 200, power: 45, armor: 56, throws: :rock) }
  let(:mak) { Hero.new(name: 'The Masked Man', health: 140, max_health: 1000, power: 140, armor: 900) }
  let(:glassed_cannon) { Hero.new(name: 'Glassed Cannon', health: 90, max_health: 90, power: 33, armor: 23) }
  # DumbHeros
  let(:rocky) { DumbHero.new(name: 'Rocky', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :rock) }
  let(:flat_dillhead) { DumbHero.new(name: 'Flatty Nimhead Nimrod', health: 80,
     max_health: 80, power: 15, armor: 20, throws: :paper) }
  let(:scissy) { DumbHero.new(name: 'Scissy', health: 80,
    max_health: 80, power: 15, armor: 20, throws: :scissors) }
  let(:test_monster) { Monster.new(name: 'Rat Leader', health: 439,
     max_health: 439, power: 56, armor: 1) }
  # Arenas
  let(:arena) { build(:arena) }
  let(:monster_arena) { build(:arena) }
  # Tests
  it 'initializes 2 heroes' do
    expect(arena).to be_an_instance_of(Arena)
  end
  it 'makes Jeff attack Blake' do
    arena.apply_damage(:character1)
    expect(blake.health).to eq(145)
  end
  it 'makes Blake attack Jeff' do
    arena.apply_damage(:character2)
    expect(jeff.health).to eq(95)
  end
  it 'has no winners because both heroes are still alive' do
    expect(arena.winner).to eq(nil)
  end
  it "checks if Blake won" do
    4.times do
      arena.apply_damage(:character2)
    end
    expect(arena.winner).to eq(blake.name)
  end
  it 'checks if Jeff won' do
    5.times do
      arena.apply_damage(:character1)
    end
    expect(arena.winner).to eq(jeff.name)
  end
  it "checks whether Blake wins" do
    arena.start_match
    expect(arena.winner).to eq(blake.name)
  end
  it 'makes sure the starting history is blank' do
    expect(arena.history).to eq([])
  end
  it "makes a DumbHero fight a Monster" do
    monster_arena.start_match
    expect(monster_arena.winner).not_to be_nil # Not nil
  end
end
