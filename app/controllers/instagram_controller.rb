class InstagramController < ApplicationController
  def subscription
    client = Instagram.client(:access_token => session[:access_token])
    params = request.env['rack.request.query_hash']
    @html = params['hub.challenge'].to_s
    respond_to do |format|
      format.html { render :text => @html }
    end
  end

  def create
    skip_before_filter  :verify_authenticity_token

    request.body.rewind  # in case someone already read it
    data = request.body.read

    puts data

  end
end
