class InstagramArtsController < InheritedResources::Base

  def index
    @instagram_arts = InstagramArts.all.reverse
  end

end

