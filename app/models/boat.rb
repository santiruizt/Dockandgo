class Boat < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :size, presence: true
  validates :boat_plate, presence: true
end
