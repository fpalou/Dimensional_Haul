class Dimension < ApplicationRecord
  has_many :bookings
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
