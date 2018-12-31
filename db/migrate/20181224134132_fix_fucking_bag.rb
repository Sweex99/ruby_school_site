class FixFuckingBag < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :class
    add_column :users, :class_room, :integer, default: 5
  end
end
