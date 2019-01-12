class ChangeColumnDateInHomeTaskPartTwo < ActiveRecord::Migration[5.1]
  def change
    remove_column :home_tasks, :date_task
  end
end
