feature 'Players can view hitpoints' do
  scenario 'Player 2 Hit Points can be seen by Player 1' do
    sign_in_and_play
    expect(page).to have_content 'Maud: 60HP'
  end
  scenario 'Player 1 Hit Points can be seen by Player 2' do
    sign_in_and_play
    expect(page).to have_content 'John: 60HP'
  end
end
