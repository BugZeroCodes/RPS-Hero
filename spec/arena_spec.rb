RSpec.describe 'Arena' do
  # DumbHeroes
  let(:jeff) { build(:dumb_hero, name: 'Jeff', health: 140, max_health: 150, power: 45, armor: 56, throws: :scissors)}
  let(:blake) { build(:dumb_hero, name: 'Blake', health: 190, max_health: 200, power: 45, armor: 56, throws: :rock)}
  let(:rocky) { build(:rocky) }
  let(:scissy) { build(:scissy) }
  # Monster
  let(:test_monster) { build(:monster) }
  # Arenas
  let(:arena) { build(:arena, character1: jeff, character2: blake) }
  let(:monster_arena) { build(:arena, character1: test_monster, character2: rocky) }
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
