require 'rails_helper'

RSpec.describe CarsharingsController, type: :controller do
    
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
  end
  
  describe "GET show" do
    it 'assigns @carsharings' do
        carsharing = Carsharing.create
        get :show, id: carsharing.id  
        expect(assigns(:carsharing)).to eq(carsharing)
    end
  
    it 'renders the show template' do
        get :show
        expect(response).to render_template("show")
    end

  end

  describe "GET new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET edit" do
    it "assigns @carsharings" do
      # création d'une instance
      carsharing = Carsharing.create
  
      # on va sur edit
      get :edit, id: carsharing.id
  
      # @user doit être user
      expect(assigns(:carsharing)).to eq(carsharing)
    end
  
    it "renders the edit template" do
      # va sur edit
      get :edit
  
      # on doit rediriger vers edit
      expect(response).to render_template("edit")
    end
  end

#   describe "POST #create" do
#     # des tests
#   end

#   describe "PUT #update" do
#     # des tests
#   end

#   describe "DELETE #destroy" do
#     # des tests
#   end

end