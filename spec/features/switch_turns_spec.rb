require 'spec_helper'

feature 'Current player' do
  it 'knows the current player' do
    sign_in_and_play
    expect($game.current_player.name).to eq("Bob")
  end

  feature 'Switch turns' do
    it 'switches the player turns' do
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      expect($game.current_player.name).to eq("Larry")
    end
  end
end
