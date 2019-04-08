class AddDefoultValueToAvatar < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :avatar
    add_column :users, :avatar, :string, :default => '#{Rails.root}+/public/avatar/school.ico'
  end
end
