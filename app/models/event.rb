class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  has_many :locations
  has_many :shift_locations
end
