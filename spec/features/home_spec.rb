feature "visitor visits page for the first time" do
  before(:each) do
    visit "/"
  end
  scenario "show a registration button" do
    expect(page).to have_content("Register")
  end
end