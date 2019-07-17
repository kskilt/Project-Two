require "rails_helper"

RSpec.describe "New Movie", :type => :request do

  it "creates a movie and redirects to the Movie's index page" do
    stub_authorize
    get "/movies/new"
    expect(response).to render_template(:new)

    post "/movies", :movie => {:name => "My Widget", :description => "Widget description"}

    expect(response).to redirect_to(assigns(:movie))
    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include("My Widget")
  end
end

require "rails_helper"

RSpec.describe "Movie request", type: :request do

  it "Creates a movie and redirects to the movie's page" do
    stub_authorize
    get "/movies"
    expect(response).to render_template(:index)
  end

  it "Does not render a different template" do
    stub_authorize
    get "/movies/new"
    expect(response).to_not render_template(:show)
  end
end

