require 'rails_helper'

RSpec.describe Carsharing, type: :model do
  before do
    @carsharing = FactoryBot.create(:carsharing)
  end

  # context "validations" do
  #   it "is valid with valid attributes" do
  #     expect(@carsharing).to be_a(Carsharing)
  #     expect(@carsharing).to be_valid
  #   end
  # end

  # describe 'description' do
  #   it 'is not valid without description' do
  #     bad_event = Event.create(FactoryBot.build(:user, description: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:description)).to eq(true)
  #   end

  #   it 'is not valid without description length < 20' do
  #     bad_event = Event.create(FactoryBot.build(:user, description: 'bad'))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:description)).to eq(true)
  #   end
  # end


  # describe 'Other entry' do
  #   it 'is not valid without Places' do
  #     bad_event = Event.create(FactoryBot.build(:user, places: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:places)).to eq(true)
  #   end

  #   it 'is not valid without golf_id' do
  #     bad_event = Event.create(FactoryBot.build(:user, golf_id: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:golf_id)).to eq(true)
  #   end

  #   it 'is not valid without driver_id' do
  #     bad_event = Event.create(FactoryBot.build(:user, driver_id: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:driver_id)).to eq(true)
  #   end
  # end


  # context "public instance methods" do
  #   describe "should return :" do
  #     it 'string' do
  #       expect(@carsharing.description).to be_a(String)
  #     end
  #   end
  # end

end