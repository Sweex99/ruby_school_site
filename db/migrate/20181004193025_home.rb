class Home < ActiveRecord::Migration[5.1]
  def change
    create_table :home do |t|
      t.string :monday,       null: false
      t.string :tuesday,      null: false
      t.string :wednesday,    null: false
      t.string :thursday,     null: false
      t.string :friday,       null: false
      t.string :saturday,     null: false

      t.timestamps
    end
  end
end
