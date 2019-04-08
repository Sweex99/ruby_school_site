class AddRemoveUnique < ActiveRecord::Migration[5.1]
  def change
    remove_column :stats, :id_user
  end
end
