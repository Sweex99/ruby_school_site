class ReworkScheduleModel < ActiveRecord::Migration[5.1]
  def change
    drop_table :schedules
    create_table :schedules do |t|
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth
      t.string :fifth
      t.string :sixth
      t.integer :class_room
      t.date :date_time

      t.timestamps
    end
  end
end
