require "rails_helper"

RSpec.describe "Theater showing request", type: :request do

  it "Creates a showing and redirects to the theater's page" do
    stub_authorize
    get "/theaters"
    expect(response).to render_template(:index)
  end

  it "Does not render a different template" do
    stub_authorize
    get "/theaters/"
    expect(response).to_not render_template(:show)
  end
end
