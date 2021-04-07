class Setlist < ApplicationRecord
  belongs_to :band
  has_many :settitels
  has_many :titles, through: :settitels


end
