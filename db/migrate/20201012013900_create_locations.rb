class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string  :country   
      t.integer :user_id
      t.integer :vacation_id

      t.timestamps
    end
  end
end
