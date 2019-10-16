class Train < ApplicationRecord
  belongs_to :apartment,optional: true

  validates :line, presence: true
  validates :station, presence: true
  validates :distance, presence: true
end
