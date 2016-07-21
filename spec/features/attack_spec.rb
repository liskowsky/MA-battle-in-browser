feature "Attacking" do
  scenario "attacking Player 2" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content('Karol attacked Titus')
  end

  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content('Titus: 90 HP')
  end
end
