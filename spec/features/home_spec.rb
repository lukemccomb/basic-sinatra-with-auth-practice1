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
end