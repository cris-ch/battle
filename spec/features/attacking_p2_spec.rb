feature 'Attacking' do
    scenario 'Player 1 to Player 2' do
      sing_in_and_play
      click_button 'Attack P2'
      expect(page).to have_content 'Alister attacked Oliver'
    end
  end