class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.text  :description
      t.integer :enjoyment_rating  
      t.integer :duration
      t.boolean :solo_traveler 

      t.timestamps
    end
  end
end
