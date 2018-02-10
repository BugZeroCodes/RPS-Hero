describe 'Character' do

  let(:char) { Character.new(health: 10, max_health: 10, power: 4, armor: 0,
     name: '') }

  it "checks if char is a character" do
    expect(char).to be_a(Character)
  end
  it 'has a name' do
    expect(char.name).to eq('')
  end

  context 'health' do
    it 'has health' do
      expect(char.health).to eq(10)
    end

    it 'has max health' do
      expect(char.max_health).to eq(10)
    end
  end

  it 'has power' do
    expect(char.power).to eq(4)
  end

  context 'armor' do
    it 'has armor/power resistance' do
      expect(char.respond_to?(:armor)).to be true
    end
    it "expects default value of hero's armor to be 5" do
      expect(char.armor).to eq(0)
    end
  end

  context 'damage' do
    it "recieves damage" do
      char.receive_damage(20)
      expect(char.health).to eq(0)
    end
    it "receives fatal damage" do
      char.receive_damage(170)
      expect(char.health).to eq(0)
    end
  end
end
