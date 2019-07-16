# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Showing, type: :model do
  it 'has a theater' do
    @showing = Showing.create(theater: 'AMC', movie: 'Star Wars', time: '6/16/2019 06:30:00ET')
    expect(@showing.theater).to eq('AMC')
  end

  it 'has a movie' do
    @showing = Showing.create(theater: 'AMC', movie: 'Star Wars', time: '6/16/2019 06:30:00ET')
    expect(@showing.movie).to eq(
      'Star Wars'
    )
  end

  it 'has a time' do
    @showing = Showing.create(theater: 'AMC', movie: 'Star Wars', time: '6/16/2019 06:30:00ET')
    expect(@showing.time).to eq(
      '6/16/2019 06:30:00ET'
    )
  end
  it 'has a valid factory' do
    expect(create(:showing)).to be_valid
  end

end
