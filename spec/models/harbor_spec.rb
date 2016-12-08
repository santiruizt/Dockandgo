require "rails_helper"

RSpec.describe Harbor, type: :model do
  let(:harbor) { build(:harbor) }

  it "has a valid factory" do
    expect(harbor).to be_valid
  end

  it "is invalid without a name" do
    harbor.name = nil
    expect(harbor).not_to be_valid
  end

  # it "is invalid without a beginning date" do
  #   harbor.from = nil
  #   expect(harbor).not_to be_valid
  # end

end
