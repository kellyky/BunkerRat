class CreateLineups < ActiveRecord::Migration[8.1]
  def change
    create_table :lineups do |t|
      t.references :band, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
