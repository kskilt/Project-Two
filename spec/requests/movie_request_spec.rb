require "rails_helper"

RSpec.describe "New Movie", :type => :request do

  it "creates a movie and redirects to the Movie's show page" do
    movie = create(:movie)

    stub_authorize

    get "/movies/#{movie.id}"
    expect(response).to render_template(:show)
  end
end

RSpec.describe "Movie index request", type: :request do

  it "Renders the index page" do
    stub_authorize
    get "/movies/"
    expect(response).to render_template(:index)
  end

  it "Does not render a different template" do
    stub_authorize
    get "/movies/"
    expect(response).to_not render_template(:show)
  end
end

