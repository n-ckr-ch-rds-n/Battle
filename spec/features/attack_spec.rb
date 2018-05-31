feature 'Testing attack functionality' do

  scenario 'Player1 can attack Player2 and get a confirmation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'John attacked Maud'
  end

  scenario 'If Player1 attacks Player2 she loses 10 HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).not_to have_content 'Maud: 60HP'
    expect(page).to have_content 'Maud: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    click_button 'Attack'
    expect(page).to have_content 'Maud attacked John'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    click_button 'Attack'
    click_button 'Continue'
    expect(page).not_to have_content 'John: 60HP'
    expect(page).to have_content 'John: 50HP'
  end
end
