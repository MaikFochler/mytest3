class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.belongs_to :band, null: false, foreign_key: true
      t.string :name
      t.string :instrument
      t.string :n1
      t.string :n2
      t.string :n3
      t.datetime :start_at
      t.datetime :stop_at
      t.boolean :active
      t.string :memberright

      t.timestamps
    end
  end
end
