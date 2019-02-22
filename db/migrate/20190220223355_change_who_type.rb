class ChangeWhoType < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :who
    add_column :posts, :who, :integer, :default => nil
  end
end
