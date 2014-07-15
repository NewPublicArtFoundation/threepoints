class CuratedController < ApplicationController

  def top
    @artists = Artist.all
  end
end
