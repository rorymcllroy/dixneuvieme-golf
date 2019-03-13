require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
  end

  describe 'description' do
    it 'is not valid without description' do
      bad_event = FactoryBot.build(:user, description: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:description)).to eq(true)
    end

    it 'is not valid without description length < 20' do
      bad_event = FactoryBot.build(:user, description: 'bad')
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:description)).to eq(true)
    end
  end


  describe 'Names' do
    it 'is not valid without first_name' do
      bad_event = FactoryBot.build(:user, first_name: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:first_name)).to eq(true)
    end

    it 'is not valid without last_name' do
      bad_event = FactoryBot.build(:user, last_name: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:last_name)).to eq(true)
    end
  end

  describe 'Golf level' do
    it 'is not valid without golf level' do
      bad_event = FactoryBot.build(:user, golf_level: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:golf_level)).to eq(true)
    end
  end


  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@user.first_name).to be_a(String)
        expect(@user.last_name).to be_a(String)
        expect(@user.email).to be_a(String)
      end
    end
  end

end