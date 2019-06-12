# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name' do
    kevin = User.create(name: 'Kevin', password: '123')
    expect(kevin.name).to eq('Kevin')
  end

  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end

  describe 'is not valid' do
    it 'without a password' do
      user = build(:user, password: nil)
      expect(user).to_not be_valid
    end
  end
end
