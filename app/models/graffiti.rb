class Graffiti < ActiveRecord::Base
  belongs_to :location
  belongs_to :artist

  has_many :graffiti_pictures
  acts_as_votable
  has_paper_trail
  acts_as_taggable
  resourcify
end
