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
    store_tag_response
    return true
  end

  def store_tag_response
    tag_name = "streetart"
    options = {}
    if(InstagramArt.last() != nil)
      last_id = InstagramArt.last().image_id
      options = {
        :next_min_id => last_id.to_i
      }
    end
    tags = Instagram.tag_recent_media(tag_name, options)
    @arts = ['1', '2', '3']
    @arts = parse_tags tags
    create_pages_using_tags @arts
  end

  def create_pages_using_tags arts
    arts.each do |art|
      result = InstagramArt.where(:image_url=>art['image_url'])
      if(result == [])
        InstagramArt.create(art)
      end
    end
  end

  # Used by store_tag_response
  def parse_tags tags
    @arts = []

    tags.each do |tag|
      art = process_tag tags, tag
      @arts << art
    end

    return @arts
  end

  # Used by parse_tags
  def process_tag tags, tag
    art = {}

    # art["everything"] = tag
    art["image_id"]   = tag["id"]
    art["image_url"]  = tag["images"]["standard_resolution"]["url"]
    art["date_found"] = tag["created_time"]

    if (tag["tags"] != nil)
      tag["tags"].each do |tag_result|
        if( tag_result != tag["tags"].first )
          tags = tags + ', ' + tag_result
        else
          tags = tag_result
        end
      end
    end

    art["tags"]           = tags

    if tag["caption"] != nil
      if tag["caption"]["text"] != nil
        art["caption"]        = tag["caption"]["text"]
      end
    else
      art["caption"]        = nil
    end

    art["user_name"]   = tag["user"]["username"]
    art["user_id"]     = tag["user"]["id"]
    art["user_avatar"] = tag["user"]["profile_picture"]

    if(tag["location"] != nil)
      art["location_name"]  = tag["location"]["name"]
      art["location_lon"]   = tag["location"]["longitude"]
      art["location_lat"]   = tag["location"]["latitude"]
      art["location_id"]    = tag["location"]["id"]
    else
      art["location_name"]          = nil
    end

    return art
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
