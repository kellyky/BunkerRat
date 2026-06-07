class AddCityDateShowTimeToShows < ActiveRecord::Migration[8.1]
  def change
    add_column :shows, :city, :string
    add_column :shows, :show_date, :date
    add_column :shows, :show_time, :string
  end
end
