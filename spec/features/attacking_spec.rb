feature 'Attacking' do
    scenario 'Player 1 to Player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Alister attacked Oliver'
    end

    scenario 'P1 attack P2 reduce P2 HP by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Oliver: 90HP'
      expect(page).not_to have_content 'Oliver: 100HP'
    end
  end