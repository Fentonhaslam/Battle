feature "Attacking" do
  scenario "attacking Player 2" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Dave attacked Mittens")
  end
end
