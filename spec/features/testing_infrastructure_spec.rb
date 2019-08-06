feature "Testing Infrastructure" do
  scenario "Can run app and check page and content" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
end
