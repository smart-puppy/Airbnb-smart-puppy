class Booking < ApplicationRecord
  belongs_to :User
  belongs_to :Bikes

  validates :start_date, presence: true
  validates :end_date, presence: true
end
