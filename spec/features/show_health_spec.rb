feature "Hit points" do
  scenario "Display full hit points" do
    visit("/")
    fill_in :player_1_name, with: "Dave"
    fill_in :player_2_name, with: "Mittens"
    click_button "Submit"
    expect(page).to have_content "Mittens: 100HP"
    expect(page).to have_content "Dave: 100HP"
  end
end
