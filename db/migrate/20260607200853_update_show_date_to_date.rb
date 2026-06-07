class UpdateShowDateToDate < ActiveRecord::Migration[8.1]
  def change
    rename_column :shows, :show_date, :date
  end
end
