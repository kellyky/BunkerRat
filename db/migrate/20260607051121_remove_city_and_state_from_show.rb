class RemoveCityAndStateFromShow < ActiveRecord::Migration[8.1]
  def change
    remove_column :shows, :city, :string
    remove_column :shows, :state, :string
  end
end
