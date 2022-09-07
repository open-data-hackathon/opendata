class Place < ApplicationRecord
  has_many :events
  validates :place_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end