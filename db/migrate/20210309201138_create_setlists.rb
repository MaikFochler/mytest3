class CreateSetlists < ActiveRecord::Migration[6.1]
  def change
    create_table :setlists do |t|
      t.belongs_to :band, null: false, foreign_key: true
      t.string :setname
      t.string :setlocation
      t.datetime :setdate

      t.timestamps
    end
  end
end
