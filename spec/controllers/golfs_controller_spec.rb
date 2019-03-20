require 'rails_helper'

RSpec.describe GolfsController, type: :controller do
  
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

  describe "GET show" do
    it "assigns @golfs" do
      # création d'une instance
      golf = Golf.create
  
      # on va sur show
      get :show, id: golfs.id
  
      # @user doit être user
      expect(assigns(:golf)).to eq(golf)
    end
  
    it "renders the show template" do
      # va sur show
      get :show
  
      # on doit rediriger vers show
      expect(response).to render_template("show")
    end
  end



end