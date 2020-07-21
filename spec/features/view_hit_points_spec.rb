feature 'getting player hit points' do
  scenario 'display player 2 hit points' do
    visit ('/')
    fill_in :player_1_name, with: 'Paul'
    fill_in :player_2_name, with: 'Ralph'
    click_button 'Submit'
    expect(page).to have_content 'Ralph: 60'
  end
end
