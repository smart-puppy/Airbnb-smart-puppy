class Bike < ApplicationRecord
  belongs_to :User

  validates :price, presence: true
  validates :description, presence: true
  validates :colour, presence: true
  validates :electric, presence: true
  validates :speed, presence: true
  validates :location, presence: true
end
