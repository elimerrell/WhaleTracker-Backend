class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :user_id
      t.integer :whale_sighting_id
      t.string :species
      t.integer :quantity
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :location
      t.string :photo
      t.timestamps
    end
  end
end
