class RechangeFlagsToClass < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :flags
    add_column :users, :class, :integer, default: 5
  end
end
