require_relative '../lib/arena'
RSpec.describe 'Arena' do
  it 'initializes 2 heroes' do
    hero1 = Hero.new('Jeff', 140, 150, 45, 56)
    hero2 = Hero.new('Blake', 190, 200, 45, 56)
    expect(Arena.new(hero1, hero2)).to be_an_instance_of(Arena)
  end
end
