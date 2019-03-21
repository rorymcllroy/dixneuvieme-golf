require 'rails_helper'

RSpec.describe Carsharingreview, type: :model do
  before do
    @csr = FactoryBot.create(:carsharingreview)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@csr).to be_a(Carsharingreview)
      expect(@csr).to be_valid
    end
  end

  describe 'content' do
    it 'is not valid without content' do
      bad_event = FactoryBot.build(:carsharingreview, content: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:content)).to eq(true)
    end

    it 'is not valid without content length < 20' do
      bad_event = FactoryBot.build(:carsharingreview, content: 'bad')
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:content)).to eq(true)
    end
  end


  describe 'grade' do
    it 'is not valid without grade' do
      bad_event = FactoryBot.build(:carsharingreview, grade: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:grade)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@csr.content).to be_a(String)
      end
    end
  end
end