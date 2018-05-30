feature 'Testing player registration' do
  scenario 'Players can fill in their names in a form and see them onscreen' do
    visit ('/')
    fill_in :player1, with: 'John'
    fill_in :player2, with: 'Maud'
    click_button 'Submit'
    expect(page).to have_content 'John v. Maud'
  end
end
