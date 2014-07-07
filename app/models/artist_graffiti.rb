class ArtistGraffiti < ActiveRecord::Base
  belongs_to :artist
  belongs_to :graffiti
  acts_as_votable
  has_paper_trail
  resourcify
end
