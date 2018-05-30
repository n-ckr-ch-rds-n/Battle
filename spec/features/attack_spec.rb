feature 'Testing attack functionality' do

  scenario 'Player1 can attack Player2 and get a confirmation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You have attacked Maud'
  end

  scenario 'If Player1 attacks Player2 she loses 10 HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).not_to have_content 'Maud: 60HP'
    expect(page).to have_content 'Maud: 50HP'
  end

end
