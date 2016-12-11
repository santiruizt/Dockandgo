class Harbor < ApplicationRecord
  has_many :docks

  validates :name, presence: true
end
