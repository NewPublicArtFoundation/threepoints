class Graffiti < ActiveRecord::Base
  has_many :graffiti_pictures
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :artists
  acts_as_votable 
end
