class InitDateColumnInHomeTask < ActiveRecord::Migration[5.1]
  def change
    add_column :home_tasks, :date_task, :date
  end
end
