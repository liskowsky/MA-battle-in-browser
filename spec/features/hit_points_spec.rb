feature "View hit points" do
  scenario "displays the hitpoints for Player 2" do
    sign_in_and_play
    expect(page).to have_content("Titus: 10HP" )
  end
end
