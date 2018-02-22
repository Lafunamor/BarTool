class CreateJoinTableEventLocations < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Events, :Locations do |t|
      # t.index [:event_id, :location_id]
      # t.index [:location_id, :event_id]
    end
  end
end
