require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name' do
    kevin = User.create(name: "Kevin", password: "123")
    expect(kevin.name).to eq("Kevin")
  end
end
