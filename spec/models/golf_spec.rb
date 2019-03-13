require 'rails_helper'

RSpec.describe Golf, type: :model do
  before do
    @golf = FactoryBot.create(:golf)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@golf).to be_a(Golf)
      expect(@golf).to be_valid
    end
  end

  describe 'description' do
    it 'is not valid without description' do
      bad_event = FactoryBot.build(:golf, description: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:description)).to eq(true)
    end
  end


  describe 'Position' do
    it 'is not valid without lat' do
      bad_event = FactoryBot.build(:golf, lat: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:lat)).to eq(true)
    end

    it 'is not valid without long' do
      bad_event = FactoryBot.build(:golf, long: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:long)).to eq(true)
    end
  end

  describe 'Golf name' do
    it 'is not valid without golf name' do
      bad_event = FactoryBot.build(:golf, name: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:name)).to eq(true)
    end
  end

  describe 'Course type' do
    it 'is not valid without Course type' do
      bad_event = FactoryBot.build(:golf, course_type: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:course_type)).to eq(true)
    end
  end

  describe 'Price range' do
    it 'is not valid without Price range' do
      bad_event = FactoryBot.build(:golf, price_range: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:price_range)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@golf.name).to be_a(String)
        expect(@golf.description).to be_a(String)
        expect(@golf.lat).to be_a(String)
        expect(@golf.long).to be_a(String)
        expect(@golf.course_type).to be_a(String)
        expect(@golf.price_range).to be_a(String)
      end
    end
  end

end
