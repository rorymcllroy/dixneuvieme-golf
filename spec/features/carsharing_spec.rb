require 'rails_helper'

RSpec.feature "Carsharing", type: :feature do
  it 'should go to carsharing page' do
    visit(root_path)
    first(:link, 'Trouver un covoiturage').click
    expect(page).to have_content('Les covoiturages disponibles près de chez moi')
  end
end