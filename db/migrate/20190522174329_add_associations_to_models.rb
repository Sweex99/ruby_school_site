class AddAssociationsToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :user_id, :integer
    remove_column :user_roles, :id_user, :integer
    add_column :user_roles, :user_id, :integer
  end
end
