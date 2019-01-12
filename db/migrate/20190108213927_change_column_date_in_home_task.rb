class ChangeColumnDateInHomeTask < ActiveRecord::Migration[5.1]
  def change
    rename_column :home_tasks, :data, :date_task

  end
end
