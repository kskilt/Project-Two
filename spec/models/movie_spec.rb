# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'has a name' do
    @johnwick = Movie.create(name: 'John Wick', description:
      'An ex-hit-man comes out of retirement...')
    expect(@johnwick.name).to eq('John Wick')
  end

  it 'has a description' do
    @johnwick = Movie.create(name: 'John Wick', description:
      'An ex-hit-man comes out of retirement...')
    expect(@johnwick.description).to eq(
      'An ex-hit-man comes out of retirement...'
    )
  end
end
