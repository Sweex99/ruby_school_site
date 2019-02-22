class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.integer :id_user
      t.string :role, :default => "student"
      t.integer :class_room, :default => nil

      t.timestamps
    end
  end
end
