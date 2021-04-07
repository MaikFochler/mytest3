class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :bandname
    
      t.timestamps
    end
  end
end
