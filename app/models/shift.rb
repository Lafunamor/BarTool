class Shift < ApplicationRecord
  has_many :users
  belongs_to :shift_location
end
