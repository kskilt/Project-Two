# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Showing, type: :model do
  let(:theater) { create :theater }
  let(:screen) { create :screen }
  let(:movie) { create :movie }
  let(:time) { DateTime.now }

  it 'has a theater' do
    showing = create(:showing, theater: theater)
    expect(showing.theater).to eq(theater)
  end

  it 'has a movie' do
    showing = Showing.create(theater: theater, movie: movie, time: time)
    expect(showing.movie).to eq(
      movie
    )
  end

  it 'has a time' do
    showing = Showing.create(theater: theater, movie: movie, time: time)
    expect(showing.time).to eq(
      time
    )
  end
  it 'has a valid factory' do
    expect(create(:showing)).to be_valid
  end

end
