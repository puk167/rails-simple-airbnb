class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, length: {minimum: 20}
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true
end
