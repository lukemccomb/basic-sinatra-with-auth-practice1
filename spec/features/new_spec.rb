feature "visitor fills in registration form" do
  before(:each) do
    visit "/new"
  end
  scenario "goes to registration form page" do
    expect(page).to have_content("Username:")
    expect(page).to have_content("Password:")
    expect(page).to have_button("Submit")
  end
  scenario "visitor completes form and submits" do
    fill_in "username", with: "Luke"
    fill_in "password", with: "mccomb"
    click_on "Submit"
    expect(page).to have_content("Thank you for registering.")
  end

end