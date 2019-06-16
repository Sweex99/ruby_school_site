class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :subject
      t.integer :class_room
      t.date :date

      t.timestamps
    end
  end
end
