feature 'Enter names' do
  scenario 'submitting names' do
    sing_in_and_play
    expect(page).to have_content 'Alister vs. Oliver'
  end
end