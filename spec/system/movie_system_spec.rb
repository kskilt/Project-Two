# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Movie System Spec", type: :system do
  before do
    driven_by(:rack_test)

  end
  describe do
      it "logs in as user" do
      visit "/sessions/new"
      fill_in "Name", with: "kevin";
      fill_in "Password", with: "123";
      # fill_in "movie_description", with: "This Movie is New"
      click_button "log in"
      end

    it "creates a new movie" do
      visit "/movies/new"
  sleep 1
      fill_in "Name", with: "New Movie"
      # fill_in "movie_description", with: "This Movie is New"
      click_button "commit"
    end
  end
end
