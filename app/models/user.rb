class User < ApplicationRecord
<<<<<<< HEAD
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

=======
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> 1f02a720e26cb2aea4931958c51c17e0dc2dad5f
  has_many :bookings
end
