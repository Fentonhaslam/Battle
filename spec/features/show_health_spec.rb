feature "Hit points" do
  scenario "Display full hit points" do
    sign_in_and_play
    expect(page).to have_content "Mittens: 100HP"
    expect(page).to have_content "Dave: 100HP"
  end
end
