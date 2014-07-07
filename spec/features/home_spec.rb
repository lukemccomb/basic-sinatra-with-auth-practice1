feature "visitor visits page for the first time" do
  before(:each) do
    visit "/"
  end
  scenario "show a registration button" do
    expect(page).to have_content("Register")
  end
  scenario "clicks registration button" do
    click_on("Register")
    expect(page).to have_content("Username:")
    expect(page).to have_content("Password:")
    expect(page).to have_button("Submit")
  end
  scenario "homepage shows log in form" do
    expect(page).to have_content("Log In")
  end
  scenario "user can register and log in" do
    click_on("Register")
    expect(page).to have_content("Username:")
    expect(page).to have_content("Password:")
    expect(page).to have_button("Submit")
    fill_in "username", with: "Luke"
    fill_in "password", with: "mccomb"
    click_on "Submit"
    expect(page).to have_content("Thank you for registering.")
    fill_in "username", with: "Luke"
    fill_in "password", with: "mccomb"
    click_on "Log In"
    expect(page).to have_content("Welcome, Luke.")
  end
end