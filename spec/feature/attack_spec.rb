feature 'Attacking' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacked Tom'
  end

  scenario 'Reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Tom:60HP'
    expect(page).to have_content 'Tom:50HP'
  end
end