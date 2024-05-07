class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :bikes, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
