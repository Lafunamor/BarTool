class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :shift_location, foreign_key: true

      t.timestamps
    end
  end
end
