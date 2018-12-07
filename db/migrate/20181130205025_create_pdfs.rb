class CreatePdfs < ActiveRecord::Migration[5.1]
  def change
    create_table :pdfs do |t|
      t.string :title
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
