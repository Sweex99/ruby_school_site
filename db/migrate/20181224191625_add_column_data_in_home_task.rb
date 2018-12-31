class AddColumnDataInHomeTask < ActiveRecord::Migration[5.1]
  def change
    add_column :home_tasks, :data, :string
  end
end
