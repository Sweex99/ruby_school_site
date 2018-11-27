class ChangePhoneToBeStringInCustomers < ActiveRecord::Migration[5.1]
  def change
    rename_column :home_tasks, :week, :day
    change_column :home_tasks, :day, :string
  end
end
