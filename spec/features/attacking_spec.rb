feature 'attacking player 2' do
  scenario 'attack player 2 and get a confirmation' do
    sign_in_and_play
      click_button 'Attack Player 2'
      expect(page).to have_content 'Paul attacked Ralph'
    end
  end

feature 'reduce opponents hit points' do
  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content 'Ralph: 90 Hitpoints'
  end
end
