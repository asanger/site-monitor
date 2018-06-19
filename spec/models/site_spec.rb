require 'rails_helper'

RSpec.describe Site, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:site)).to be_valid
  end
  it "must have a URL" do
    expect(FactoryBot.build(:site, url: nil)).to_not be_valid
  end
end