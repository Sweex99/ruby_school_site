class RamoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :data
  end
end
