class CuratedController < ApplicationController

  def top_display
    @artists = Artist.all
  end
end
