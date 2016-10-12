feature 'hit_points' do
  scenario 'to see player 2 points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens HP=100'
  end
end
