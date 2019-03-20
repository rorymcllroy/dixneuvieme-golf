require 'rails_helper'

RSpec.describe CarsharingsController, type: :controller do

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
      expect(subject).to render_template("carsharings/index")
    end

    it "does not render a different template" do
      expect(subject).to_not render_template("carsharings/show")
    end

    it "returns a 200 OK status" do
        get :index
        expect(response).to have_http_status(:ok)
    end
    
    it "returns a success response" do
      Carsharing.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

end