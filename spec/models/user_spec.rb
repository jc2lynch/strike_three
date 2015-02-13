require 'rails_helper'

RSpec.describe User, type: :model do
	describe "validations" do
		it "should have a valid facotry" do
			u = FactroyGirl.build(:user)
			expect(u.save).to eq true	
		end
		it { should have_many(:picks) }
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:email) }
	end

end
