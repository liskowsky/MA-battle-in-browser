def sign_in_and_play
  visit "/"
  fill_in "player_1", with: "Karol"
  fill_in "player_2", with: "Titus"
  click_button "Submit"
end
