class CreateJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :class_room

      t.timestamps
    end
  end
end
