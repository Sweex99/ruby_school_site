class Ranametablehome < ActiveRecord::Migration[5.1]
  def change
    rename_table :home, :home_works
  end
end