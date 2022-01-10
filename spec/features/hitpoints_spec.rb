feature 'View hit points' do
    scenario 'see P2 hit points' do
        sing_in_and_play
        expect(page).to have_content 'Oliver: 10HP'
    end
end