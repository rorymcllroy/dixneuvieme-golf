require 'rails_helper'

RSpec.describe City, type: :model do
  before do
    @city = FactoryBot.create(:city)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
      expect(@city).to be_valid
    end
  end

  describe "name of city" do
    # teste cet attribut, en fonction de la validation que tu lui as donnée
    it 'is not valid without name' do
      bad_attendance = FactoryBot.build(:city, name: nil)
      expect(bad_attendance).not_to be_valid
      expect(bad_attendance.errors.include?(:name)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      # teste cette méthode
      it 'string' do
        expect(@city.name).to be_a(String)
      end
    end
  end

end