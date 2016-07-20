feature "View hit points" do
  scenario "displays the hitpoints for Player 2" do
    visit('/')
    fill_in :player_1_name, with: 'Karol'
    fill_in :player_2_name, with: 'Titus'
    click_button 'Submit'
    expect(page).to have_content("Titus: 10HP" )
  end
end
