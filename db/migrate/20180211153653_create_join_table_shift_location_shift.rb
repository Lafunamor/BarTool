class CreateJoinTableShiftLocationShift < ActiveRecord::Migration[5.1]
  def change
    create_join_table :ShiftLocations, :Shifts do |t|
      # t.index [:shift_location_id, :shift_id]
      # t.index [:shift_id, :shift_location_id]
    end
  end
end
