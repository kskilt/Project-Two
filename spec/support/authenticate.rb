def sign_in(user)
  visit "/sessions/new"
  fill_in "Name", with: user.name;
  fill_in "Password", with: user.password;
  click_button "log in"
end
