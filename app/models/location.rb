class Location < ApplicationRecord
  has_many :shift_locations
  #attr_accessor :name, :description
end
