RSpec.describe Theater, type: :model do
  it 'has a valid factory' do
    expect(create(:theater)).to be_valid
  end
end
