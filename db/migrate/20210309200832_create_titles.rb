class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.belongs_to :band, null: false, foreign_key: true
      t.string :titel            #titelname
      t.string :interpret        #Interpret
      t.string :tone             #Tonart 1
      t.string :othertone        #Tonart2
      t.integer :bpm             #BPM
      t.time :duration           #Dauer
      t.boolean :active          #aktiv
      t.string :thelink          #Original
      t.string :music            #Karaoke
      t.string :notes            #Noten
      t.string :start_as         #es beginnt

      t.timestamps
    end
  end
end
