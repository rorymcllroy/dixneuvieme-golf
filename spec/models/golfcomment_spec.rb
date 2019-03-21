require 'rails_helper'

RSpec.describe Golfcomment, type: :model do
  before do
    @golfcomment = FactoryBot.create(:golfcomment)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@golfcomment).to be_a(Golfcomment)
      expect(@golfcomment).to be_valid
    end
  end

  describe 'content' do
    it 'is not valid without content' do
      bad_event = FactoryBot.build(:golfcomment, content: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:content)).to eq(true)
    end

    it 'is not valid without content.length < 20 ' do
      bad_event = FactoryBot.build(:golfcomment, content: 'bad')
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:content)).to eq(true)
    end
  end


  describe 'Grade' do
    it 'is not valid without grade' do
      bad_event = FactoryBot.build(:golfcomment, grade: nil)
      expect(bad_event).not_to be_valid
      expect(bad_event.errors.include?(:grade)).to eq(true)
    end
  end

  context "public instance methods" do
    describe "should return :" do
      it 'string' do
        expect(@golfcomment.content).to be_a(String)
      end
    end
  end

end
