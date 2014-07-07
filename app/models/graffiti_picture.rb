class GraffitiPicture < ActiveRecord::Base
  belongs_to :graffiti
  belongs_to :location
  has_paper_trail
end
