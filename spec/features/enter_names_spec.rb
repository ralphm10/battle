feature 'getting player names' do
  scenario 'player fills in form, submits and player name is displayed on screen' do
    visit ('/')
    fill_in :player_1_name, with: 'Paul'
    fill_in :player_2_name, with: 'Ralph'
    click_button 'Submit'
    expect(page).to have_content 'Paul vs. Ralph'
  end
end
