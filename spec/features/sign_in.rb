describe "the signin process", type: :feature do
  it 'sign me in' do
    visit 'devise/sessions#new'
    fill_in "user[email]", with: "testing@email.com"
    fill_in "user[password]", with: "motdepasse"
    fill_in "user[password_confirmation]", with: "motdepasse"
    click_button "S'inscrire"
    expect(page).to have_current_path(root_path)
  end
end
