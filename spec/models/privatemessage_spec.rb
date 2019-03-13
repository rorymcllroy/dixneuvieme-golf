require 'rails_helper'

RSpec.describe Privatemessage, type: :model do
  before do
    @pm = FactoryBot.create(:privatemessage)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@pm).to be_a(Privatemessage)
      expect(@pm).to be_valid
    end
  end

  describe 'content' do
    it 'is not valid without content' do
      bad_event = FactoryBot.build(:privatemessage, content: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:content)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@pm.content).to be_a(String)
      end
    end
  end
end
