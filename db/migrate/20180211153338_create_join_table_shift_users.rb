class CreateJoinTableShiftUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Shifts, :Users do |t|
      # t.index [:shift_id, :user_id]
      # t.index [:user_id, :shift_id]
    end
  end
end
