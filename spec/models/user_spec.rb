require "pry"
RSpec.describe User, type: :model do

  before do
    @kevin = User.create(name: "Kevin", password: "123", confirm_password: "123")
  end

  it 'has a name' do
    expect(@kevin.name).to eq("Kevin")
  end

  it 'has valid password' do
    expect(@kevin.password).to be_valid
  end

end
