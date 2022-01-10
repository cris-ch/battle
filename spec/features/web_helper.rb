def sing_in_and_play
	visit('/')
	fill_in :player_1_name, with: 'Alister'
	fill_in :player_2_name, with: 'Oliver'
	click_button 'Submit'
end