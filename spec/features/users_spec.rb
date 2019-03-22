require 'rails_helper'

RSpec.feature "Users", type: :feature do
  it 'sign me in' do
    visit new_user_session_path
    fill_in "user[email]", with: "testing@email.com"
    fill_in "user[password]", with: "testtest"
    click_button "Connexion"
    expect(page).to have_content('Trouver un covoiturage')
  end
end
