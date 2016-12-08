require "rails_helper"

RSpec.describe Dock, type: :model do
  let(:dock) { build(:dock) }

  it "has a valid factory" do
    expect(dock).to be_valid
  end

  it "is invalid without a size" do
    dock.size = nil
    expect(dock).not_to be_valid
  end

  it "is invalid without a price" do
    dock.price = nil
    expect(dock).not_to be_valid
  end

  it "is invalid without a dock_plate" do
    dock.dock_plate = nil
    expect(dock).not_to be_valid
  end
end
