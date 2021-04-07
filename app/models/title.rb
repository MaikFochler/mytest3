class Title < ApplicationRecord
  belongs_to :band
  has_many :settitels
  has_many :setlists, :through => :settitels


  def dauer
    self.duration
  end

end
