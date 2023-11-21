class Dimension < ApplicationRecord
  has_many :bookings
  belongs_to :category
end
