require 'spec_helper'


feature 'Enter names' do
  it 'allows players to enter their names' do
    visit('/')
    fill_in :player_1_name, with: "Bob"
    fill_in :player_2_name, with: "Larry"
    click_button 'Submit'
    expect(page).to have_content ("Bob")
  end
  
  it 'shows the players HP' do
    visit ('/')
    fill_in :player_1_name, with: "Bob"
    fill_in :player_2_name, with: "Larry"
    click_button 'Submit'
    expect(page).to have_content ("Bob :30HP")
  end
end