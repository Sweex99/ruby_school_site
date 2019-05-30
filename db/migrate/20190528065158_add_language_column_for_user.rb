class AddLanguageColumnForUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :language, :string, default: 'uk'
  end
end
