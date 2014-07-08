class Graffiti < ActiveRecord::Base
  has_many :graffiti_pictures
  has_and_belongs_to_many :artists
  belongs_to :location
  acts_as_votable
  has_paper_trail
  acts_as_taggable
  resourcify
end
