require 'rails_helper'

RSpec.describe WelcomesController, type: :controller do
  
  describe "GET #index" do
    subject { get :index }
  
    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("welcomes/index")
    end
    
    it "does not render a different template" do
      expect(subject).to_not render_template("golfs/show")
    end
    
    it "returns a 200 OK status" do
      get :index
      expect(response).to have_http_status(:ok)
    end  

  end
end  