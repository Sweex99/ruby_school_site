class AddLimitToFrags < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :frags, :string, :limit => 2
  end
end
