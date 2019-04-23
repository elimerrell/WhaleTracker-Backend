class CreateWhaleSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :whale_sightings do |t|
      t.integer :sighting_id
      t.integer :whale_id

      t.timestamps
    end
  end
end
