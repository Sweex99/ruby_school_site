class AddPathPdfFile < ActiveRecord::Migration[5.1]
  add_column :pdfs, :path, :string
end
