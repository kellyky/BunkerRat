class CreateShows < ActiveRecord::Migration[8.1]
  def change
    create_table :shows do |t|
      t.string :venue
      t.datetime :starts_at
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
