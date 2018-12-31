class AddFragToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :frags, :string, default: 's'
  end
end
