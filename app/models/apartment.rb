class Apartment < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :year, presence: true
  validates :note, presence: true
end
