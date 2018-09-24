class DeleteFragsUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :frags
  end
end
