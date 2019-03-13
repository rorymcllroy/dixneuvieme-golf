require 'rails_helper'

RSpec.describe Passenger, type: :model do
  before do
    @trip = FactoryBot.create(:passenger)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@trip).to be_a(Passenger)
      expect(@trip).to be_valid
    end
  end

  describe 'stripe customer id' do
    it 'is not valid without stripe customer id' do
      bad_event = FactoryBot.build(:passenger, stripe_customer_id: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:stripe_customer_id)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@trip.stripe_customer_id).to be_a(String)
      end
    end
  end
end
