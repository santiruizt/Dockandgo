class Rental < ApplicationRecord
  belongs_to :boat
  belongs_to :dock

  validates :rent_from, presence: true
  validates :rent_until, presence:true

  before_save :parse_date_string
  def parse_date_string
    rent_from = Time.parse(rent_from) if rent_from.is_a? String

  end
end
