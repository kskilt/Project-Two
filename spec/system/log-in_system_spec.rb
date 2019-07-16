# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Log-in System Spec", type: :system do
  before do
    driven_by(:rack_test)
  end
    describe do
      it "logs in as user" do
      user = User.create(name: "kevin",password: "123")
      sign_in(user)
      expect(page).to have_content "Hello there, kevin!"
      end
  end
end
