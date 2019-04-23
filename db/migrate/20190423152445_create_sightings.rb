class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :user_id
      t.integer :whale_sighting_id
      t.string :title 
      t.text :description
      t.integer :quantity
      t.float :latitude
      t.float :longitude
      t.string :landmark
      t.string :photo

      t.timestamps
    end
  end
end
