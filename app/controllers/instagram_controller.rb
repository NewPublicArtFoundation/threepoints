class InstagramController < ApplicationController
  protect_from_forgery except: :create

  def subscription
    client = Instagram.client(:access_token => session[:access_token])
    params = request.env["rack.request.query_hash"]
    @html = params["hub.challenge"].to_s
    respond_to do |format|
      format.html { render :text => @html }
    end
  end

  def create
    request.body.rewind  # in case someone already read it
    data = request.body.read

    respond_to do |format|
      format.html { render :text => data }
    end
  end

  def store_tag_response
    tag_name = "streetart"
    tags = Instagram.tag_recent_media(tag_name)
    @arts = []

    tags.each do |tag|
      art = {}

      # comments count and content

      # number of likes

      art["everything"]     = tag
      art["image_url"]      = tag["images"]["standard_resolution"]["url"]
      art["date_found"]     = tag["created_time"]
      art["tags"]           = tag["tags"]

      if tag["caption"]["text"] != nil
        art["caption"]        = tag["caption"]["text"]
      else
        art["caption"]        = nil
      end

      art["user"]           = {}
      art["user"]["name"]   = tag["user"]["username"]
      art["user"]["id"]     = tag["user"]["id"]
      art["user"]["avatar"] = tag["user"]["profile_picture"]

      if(tag["location"] != nil)
        art["location"]          = {}
        art["location"]["name"]  = tag["location"]["name"]
        art["location"]["lon"]   = tag["location"]["longitude"]
        art["location"]["lat"]   = tag["location"]["latitude"]
        art["location"]["id"]    = tag["location"]["id"]
      else
        art["location"]          = nil
      end

      @arts << art
    end

  end

  def get_tag
    tag_name = "streetart"
    last_called_id = ""
    client = Instagram.client(:access_token => session[:access_token])
    # tags = client.tag_recent_media(tag_name, :min_id => last_called_id)
    tags = client.tag_recent_media(tag_name)
    puts tags
  end
end
