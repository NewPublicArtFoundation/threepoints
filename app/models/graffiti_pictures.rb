class GraffitiPictures < ActiveRecord::Base
  belongs_to :graffiti
  has_paper_trail
  resourcify
end
