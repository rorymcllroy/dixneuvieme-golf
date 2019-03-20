require 'rails_helper'

RSpec.describe CarsharingreviewsController, type: :controller do

  describe "GET new" do
    it "renders the new template" do
      # va sur new
      get :new
  
      # on doit rediriger vers new
      expect(response).to render_template("new")
    end
  end

end
