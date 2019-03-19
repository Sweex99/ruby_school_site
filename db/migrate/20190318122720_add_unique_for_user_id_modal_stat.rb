class AddUniqueForUserIdModalStat < ActiveRecord::Migration[5.1]
  def change
    add_index :stats, :id_user, unique: true
  end
end
