RSpec.describe 'Hero' do

  let(:jeff) { build(:jeff) }

  it 'is a kind of Character' do
    expect(jeff).to be_kind_of(Character)
  end
end
