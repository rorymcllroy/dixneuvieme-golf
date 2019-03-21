require 'rails_helper'

RSpec.describe GolfsController, type: :controller do
  
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }


  describe "GET #index" do
    subject { get :index }
  
    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("golfs/index")
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