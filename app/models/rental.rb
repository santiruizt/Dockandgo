class Rental < ApplicationRecord
  belongs_to :boat
  belongs_to :dock

  validates :rent_from, presence: true
  validates :rent_until, presence:true
end
