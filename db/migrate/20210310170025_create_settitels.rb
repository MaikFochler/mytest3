class CreateSettitels < ActiveRecord::Migration[6.1]
  def change
    create_table :settitels do |t|
      t.integer :setlist_id
      t.integer :titel_id
      t.integer :round
      t.integer :number
      
      t.timestamps
    end
  end
end
