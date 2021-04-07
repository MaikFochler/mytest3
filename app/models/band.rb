class Band < ApplicationRecord

  has_many :titles
  has_many :setlists
  has_many :members
end
