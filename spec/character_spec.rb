describe 'Character' do

  let(:character) { FactoryBot.build(:character) }

  it "checks if character is a character" do
    expect(character).to be_a(Character)
  end
  it 'has a name' do
    expect(character.name).to eq('')
  end

  context 'health' do
    it 'has health' do
      expect(character.health).to eq(10)
    end

    it 'has max health' do
      expect(character.max_health).to eq(10)
    end
  end

  it 'has power' do
    expect(character.power).to eq(4)
  end

  context 'armor' do
    it 'has armor/power resistance' do
      expect(character.respond_to?(:armor)).to be true
    end
    it "expects default value of hero's armor to be 5" do
      expect(character.armor).to eq(0)
    end
  end

  context 'damage' do
    it "recieves damage" do
      character.receive_damage(20)
      expect(character.health).to eq(0)
    end
    it "receives fatal damage" do
      character.receive_damage(170)
      expect(character.health).to eq(0)
    end
  end
end
