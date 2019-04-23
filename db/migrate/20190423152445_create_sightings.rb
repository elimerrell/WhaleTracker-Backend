class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :whale_sighting_id
      t.string :title 
      t.text :description
      t.string :photo
      t.timestamps
    end
  end
end
