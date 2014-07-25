class PagesController < ApplicationController
  def index
    @users = User.all
    @locations = Location.all
  end

  def home
  end

  def about
  end

end
