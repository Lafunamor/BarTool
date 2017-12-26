class ShiftLocation < ApplicationRecord
  belongs_to :location
  has_many :shifts
end
