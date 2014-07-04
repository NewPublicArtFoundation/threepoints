class GraffitiPicture < ActiveRecord::Base
  belongs_to :graffiti
  belongs_to :location
end
