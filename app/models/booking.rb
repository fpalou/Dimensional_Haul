class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dimension
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..10 }
end
