require "rails_helper"

RSpec.describe Boat, type: :model do
  let(:boat) { build(:boat) }

  it "has a valid factory" do
    expect(boat).to be_valid
  end

  it "is invalid without a size" do
    boat.size = nil
    expect(boat).not_to be_valid
  end

  it "is invalid without a dock_plate" do
    boat.boat_plate = nil
    expect(boat).not_to be_valid
  end

end
