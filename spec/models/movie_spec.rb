require "pry"
RSpec.describe Movie, type: :model do

  before do
    @johnwick = Movie.create(name: "John Wick", description: "An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.")
  end

  it 'has a name' do
    expect(@johnwick.name).to eq("John Wick")
  end

  it 'has a description' do
    expect(@johnwick.description).to eq("An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.")
  end
end

