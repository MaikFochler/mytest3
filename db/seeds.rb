# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.read('db/tbl_band_oF.csv').each do |mband|
  # byebug
   Band.create do |band|
    band.bandname = mband[1]
   end 

end

CSV.read('db/tbl_mitglieder_oF.csv').each do |mg|
#  Band.first.mitglieds.find_or_create_by(Name: mg[2]) do |mitg|
  Member.create do |mitg|
    mitg.band_id = mg[1]
    mitg.name = mg[2]
    mitg.instrument = mg[3]
    mitg.n1= mg[4]
    mitg.n2 = mg[5]
    mitg.n3 = mg[6]
    mitg.email = mg[7]
    mitg.activ = mg[8]
    mitg.since = mg[9]
    mitg.until = mg[10]
    mitg.memberright = mg[12]
    mitg.report = mg[13]
    #mitg.NPW = mg[14]
  end
end 

CSV.read('db/tbl_titelliste_oF.csv').each do |song|
  #byebug
  Band.first.titles.create do |title|
    title.band_id =song[0]
  #  title.Nr = song[1]
    title.titel = song[2]
    title.interpret = song[3]
    title.id = song[4]
    title.tone = song[5]
    title.othertone = song[6]
    title.bpm = song[8]
    title.duration = song[9]  
    title.activ = song[10].to_i == 0
    title.thelink = song[11]
    title.music = song[12]
    title.notes = song[13]
    title.start_as = song[14]
  end
end

CSV.read('db/tbl_setlisten_oF.csv').each do |set|
#  #byebug
  Band.first.setlists.create do |setl|
    setl.id = set[0]
    setl.setname = set[1]
    setl.band_id = set[2]
    setl.setdate = set[3]
    setl.setlocation = set[4]
  end
end

CSV.read('db/tbl_settitel_oF.csv').each do |set|
  #  #byebug
    Settitel.create do |setl|
      setl.setlist_id = set[0]
      setl.title_id = set[1]
      setl.round = set[2]
      setl.number = set[3]
    end
  end