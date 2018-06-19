require 'rails_helper'

RSpec.describe Check, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:site)).to be_valid
  end
  it "has a status code" do
    expect(FactoryBot.build(:check, status_code: nil)).to_not be_valid
  end
  it "has a response time" do
    expect(FactoryBot.build(:check, response_time: nil)).to_not be_valid
  end
end
