class Dock < ApplicationRecord
  belongs_to :user
  belongs_to :harbor
  has_many :rentals

  validates :size, presence: true
  validates :price, presence: true
  validates :dock_plate, presence: true
  
end
