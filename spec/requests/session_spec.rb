require "rails_helper"
RSpec.describe "Sign In" do
  it "Upon login, the user index page is rendered" do
    user = create(:user)

    get "/sessions/new"
    expect(response).to render_template("/")
  end
  it "does not render a different template" do
    get "/sessions/new"
    expect(response).to_not render_template(:show)
  end
end
