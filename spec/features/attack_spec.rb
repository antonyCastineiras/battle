require 'spec_helper'
feature 'attack' do
  scenario 'atack Player 2' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'Mittens HP=90'
  end
end
