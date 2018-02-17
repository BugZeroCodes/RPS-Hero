RSpec.describe 'Bout' do
  it "tells character1 and character2 threw" do
    expect(Bout.new(character1: :rock, character2: :paper)).to be_an_instance_of(Bout)
  end
  it "returns the result" do
    expect(Bout.new(character1: :rock, character2: :rock).result).to eq(:tie)
  end

  context 'rock wins' do
    it "checks when character 1 wins" do
      expect(Bout.new(character1: :rock, character2: :scissors).result).to eq(:character1)
    end
    it "checks when character 2 wins" do
      expect(Bout.new(character1: :scissors, character2: :rock).result).to eq(:character2)
    end
  end

  context 'paper wins' do
    it "checks when character 1 wins" do
      expect(Bout.new(character1: :paper, character2: :rock).result).to eq(:character1)
    end
    it "checks when character 2 wins" do
      expect(Bout.new(character1: :rock, character2: :paper).result).to eq(:character2)
    end
  end

  context 'scissors wins' do
    it "checks when character 1 wins" do
      expect(Bout.new(character1: :scissors, character2: :paper).result).to eq(:character1)
    end
    it "checks when character 2 wins" do
      expect(Bout.new(character1: :paper, character2: :scissors).result).to eq(:character2)
    end
  end
end
