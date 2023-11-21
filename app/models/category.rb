class Category < ApplicationRecord
  has_many :dimensions
  validates :name, presence: true, uniqueness: true
end
