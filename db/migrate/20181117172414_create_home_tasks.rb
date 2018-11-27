class CreateHomeTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :home_tasks do |t|
      t.string :description
      t.string :subject
      t.integer :class_room
      t.integer :week

      t.timestamps
    end
  end
end
