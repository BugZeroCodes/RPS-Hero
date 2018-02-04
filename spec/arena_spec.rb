require_relative '../lib/arena'
RSpec.describe 'Arena' do

  let(:hero1) { Hero.new('Jeff', 140, 150, 45, 56) }
  let(:hero2) { Hero.new('Blake', 190, 200, 45, 56) }
  let(:mak) { Hero.new('The Masked Man', 10000, 10000, 100, 900) }

  it 'initializes 2 heroes' do
    expect(Arena.new(hero1, hero2)).to be_an_instance_of(Arena)
  end
end
