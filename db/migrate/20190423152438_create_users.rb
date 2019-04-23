class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username 
      t.email :email 
      t.password :password 
      to.string :location 
      t.string :vessel

      t.timestamps
    end
  end
end
