class CreateJoinTableEventShiftLocations < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Events, :ShiftLocations do |t|
      # t.index [:event_id, :shift_location_id]
      # t.index [:shift_location_id, :event_id]
    end
  end
end
