class Apartment < ApplicationRecord
  has_many :trains, dependent: :destroy
  # inverse_of: :apartment

  accepts_nested_attributes_for :trains

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :year, presence: true
  validates :note, presence: true
end
