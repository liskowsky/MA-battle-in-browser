feature "Battle game", :type => :feature do
  scenario "sets the names of the players" do
    visit "/"
    fill_in "player_1_name", :with => "Karol"
    fill_in "player_2_name", :with => "Titus"
    click_button "Submit"
    expect(page).to have_content ("Karol vs. Titus")
  end
end
