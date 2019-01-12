class ChangeDayToDayByWeek < ActiveRecord::Migration[5.1]
  def change
    rename_column :home_tasks, :day, :day_by_week
  end
end
