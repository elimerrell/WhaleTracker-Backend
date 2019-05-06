class CreateWhales < ActiveRecord::Migration[5.2]
  def change
    create_table :whales do |t|
      t.string :common_name 
      t.string :genus
      t.string :species
      t.text :description
      t.string :range 
      t.text :behaviors 
      t.string :photo
      t.timestamps
    end
  end
end
