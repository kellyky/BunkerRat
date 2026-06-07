class RemoveStartsAtFromShows < ActiveRecord::Migration[8.1]
  def change
    remove_column :shows, :starts_at, :datetime
  end
end
