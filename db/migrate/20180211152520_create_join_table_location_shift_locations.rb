class CreateJoinTableLocationShiftLocations < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Locations, :ShiftLocations do |t|
      # t.index [:location_id, :shift_location_id]
      # t.index [:shift_location_id, :location_id]
    end
  end
end
