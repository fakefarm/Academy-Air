class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :arrival_code
      t.time :departs_at
      t.string :departure_code
      t.integer :distance
      t.integer :number
      t.integer :seats

      t.timestamps
    end
  end
end
