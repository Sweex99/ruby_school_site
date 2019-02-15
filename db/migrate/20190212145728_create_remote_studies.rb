class CreateRemoteStudies < ActiveRecord::Migration[5.1]
  def change
    create_table :remote_studies do |t|
      t.string :title
      t.string :body
      t.string :Ylink
      t.string :Slink
      t.string :Subject
      t.integer :class_room

      t.timestamps
    end
  end
end
