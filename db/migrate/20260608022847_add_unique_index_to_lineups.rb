class AddUniqueIndexToLineups < ActiveRecord::Migration[8.1]
  def change
    add_index :lineups, [:show_id, :band_id], unique: true
  end
end
