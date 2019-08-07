require "player"

feature "Attacking" do
  scenario "attacking Player 2" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content("Dave attacked Mittens")
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_button "attack"
    click_link "OK"
    expect(page).not_to have_content("Mittens: 100HP")
    expect(page).to have_content("Mittens: 90HP")
  end
end
