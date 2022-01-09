feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Alister'
    fill_in :player_2_name, with: 'Oliver'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Alister vs. Oliver'
  end
end