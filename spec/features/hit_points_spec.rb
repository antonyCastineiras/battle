feature 'hit_points' do
  scenario 'to see player 2 points' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens HP=100'
  end
end
