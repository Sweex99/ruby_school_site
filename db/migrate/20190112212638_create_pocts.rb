class CreatePocts < ActiveRecord::Migration[5.1]
  def change
    create_table :pocts do |t|
      t.string :title
      t.string :body
      t.string :who

      t.timestamps
    end
  end
end
