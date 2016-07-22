feature "Battle game", :type => :feature do
  scenario "sets the names of the players" do
    sign_in_and_play
    expect(page).to have_content ("Karol vs. Titus")
  end
end
