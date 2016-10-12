feature 'lose' do
  scenario 'losing the game' do
    sign_in_and_play
    10.times { click_button 'attack'}
    expect(page).to have_content 'Game over'
  end
end
