feature 'Players can view hitpoints' do
  scenario 'Player 2 Hit Points can be seen by Player 1' do
    visit ('/')
    fill_in :player1, with: 'John'
    fill_in :player2, with: 'Maud'
    click_button 'Submit'
    expect(page).to have_content 'Maud: 60 HP'
  end
end
