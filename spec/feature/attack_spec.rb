feature 'Attacking' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Tom'
  end
end
