# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'has a name' do
    johnwick = create(:movie, name: 'John Wick')
    expect(johnwick.name).to eq('John Wick')
  end

  it 'has a description' do
    johnwick = create(:movie, description:
      'An ex-hit-man comes out of retirement...')
    expect(johnwick.description).to eq(
      'An ex-hit-man comes out of retirement...'
    )
  end

  it 'has a valid factory' do
    expect(create(:movie)).to be_valid
  end

end
