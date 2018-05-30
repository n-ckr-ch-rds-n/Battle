feature 'Testing attack functionality' do
  scenario 'Player1 can attack Player2 and get a confirmation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You have attacked Maud'
  end
end
