class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.boolean :have_you_visited_before
      t.integer :user_id
      t.integer :vacation_id
      
      t.timestamps
    end
  end
end
