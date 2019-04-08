class RenewDefalotValueInAvatar < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :avatar
    add_column :users, :avatar, :string, :default => '/school.ico'
  end
end
