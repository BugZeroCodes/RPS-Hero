RSpec.describe 'Bout' do
  it "tells player1 and player2 threw" do
    expect(Bout.new(player1: :rock, player2: :paper)).to be_an_instance_of(Bout)
  end
  it "returns the result" do
    expect(Bout.new(player1: :rock, player2: :rock).result).to eq(:tie)
  end

  context 'rock wins' do
    it "checks when player 1 wins" do
      expect(Bout.new(player1: :rock, player2: :scissors).result).to eq(:player1)
    end
    it "checks when player 2 wins" do
      expect(Bout.new(player1: :scissors, player2: :rock).result).to eq(:player2)
    end
  end

  context 'paper wins' do
    it "checks when player 1 wins" do
      expect(Bout.new(player1: :paper, player2: :rock).result).to eq(:player1)
    end
    it "checks when player 2 wins" do
      expect(Bout.new(player1: :rock, player2: :paper).result).to eq(:player2)
    end
  end

  context 'scissors wins' do
    it "checks when player 1 wins" do
      expect(Bout.new(player1: :scissors, player2: :paper).result).to eq(:player1)
    end
    it "checks when player 2 wins" do
      expect(Bout.new(player1: :paper, player2: :scissors).result).to eq(:player2)
    end
  end
end
