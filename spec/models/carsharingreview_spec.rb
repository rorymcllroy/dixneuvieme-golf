require 'rails_helper'

RSpec.describe Carsharingreview, type: :model do
  before do
    @carsharing = FactoryBot.create(:carsharingreview)
  end

  # context "validations" do
  #   it "is valid with valid attributes" do
  #     expect(@carsharing).to be_a(Carsharing)
  #     expect(@carsharing).to be_valid
  #   end
  # end

  # describe 'content' do
  #   it 'is not valid without description' do
  #     bad_event = Event.create(FactoryBot.build(:user, content: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:content)).to eq(true)
  #   end

  #   it 'is not valid without content length < 20' do
  #     bad_event = Event.create(FactoryBot.build(:user, content: 'bad'))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:content)).to eq(true)
  #   end
  # end


  # describe 'Other entry' do
  #   it 'is not valid without carsharing_id' do
  #     bad_event = Event.create(FactoryBot.build(:user, carsharing_id: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:carsharing_id)).to eq(true)
  #   end

  #   it 'is not valid without passenger_id' do
  #     bad_event = Event.create(FactoryBot.build(:user, passenger_id: nil))
  #     expect(bad_event).not_to be_valid
  #     expect(bad_event.errors.include?(:passenger_id)).to eq(true)
  #   end

  # end


  # context "public instance methods" do
  #   describe "should return :" do
  #     it 'string' do
  #       expect(@carsharing.content).to be_a(String)
  #     end
  #   end
  # end

end