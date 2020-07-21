feature 'getting player hit points' do
  scenario 'display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ralph: 60'
  end
end
