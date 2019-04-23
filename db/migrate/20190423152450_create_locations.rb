class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.ingteger :sighting_id
      t.float :latitude 
      t.float :longitude 
      t.string :landmark

      t.timestamps
    end
  end
end
