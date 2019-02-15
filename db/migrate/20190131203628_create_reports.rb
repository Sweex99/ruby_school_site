class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :student_id
      t.string :body
      t.date :when
      t.string :who

      t.timestamps
    end
  end
end
