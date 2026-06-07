class RenameShowStartTime < ActiveRecord::Migration[8.1]
  def change
    rename_column :shows, :show_time, :time
  end
end
