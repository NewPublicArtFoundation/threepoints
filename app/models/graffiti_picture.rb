class GraffitiPicture < ActiveRecord::Base
  belongs_to :graffiti
  has_paper_trail
end
