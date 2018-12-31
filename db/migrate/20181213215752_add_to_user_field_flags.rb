class AddToUserFieldFlags < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :flags, :string, default: 's5', limit: 2, null: false
  end
end
