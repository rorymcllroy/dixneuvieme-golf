require 'rails_helper'

RSpec.describe 'welcomes/index', type: :view do
  context 'it says 19 eme Trou ' do
    it "displays 'welcome'" do
      render

      expect(rendered).to have_content '19ème trou'
    end
  end

  context 'it says Service de covoiturage pour golfeur citadin ' do
    it "displays 'welcome'" do
      render

      expect(rendered).to have_content 'Service de covoiturage pour golfeur citadin'
    end
  end

  context 'it says Les golfs près de chez toi ' do
    it "displays 'welcome'" do
      render

      expect(rendered).to have_content 'Les golfs près de chez toi'
    end
  end

  context 'it says Navigue sur la carte pour afficher les golfs alentours ' do
    it "displays 'welcome'" do
      render

      expect(rendered).to have_content 'Navigue sur la carte pour afficher les golfs alentours'
    end
  end

end
