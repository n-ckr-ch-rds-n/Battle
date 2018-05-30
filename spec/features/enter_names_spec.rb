feature 'Testing player registration' do
  scenario 'Players can fill in their names in a form and see them onscreen' do
    sign_in_and_play
    expect(page).to have_content 'John v. Maud'
  end
end
