class PagesController < ApplicationController
  def index
    @users = User.all
    @locations = Location.all
    @graffitis = Graffiti.limit(20).all
  end

  def home
  end

  def about
  end

end
