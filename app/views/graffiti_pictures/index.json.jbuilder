json.array!(@graffiti_pictures) do |graffiti_picture|
  json.extract! graffiti_picture, :id, :graffiti_id, :image_url, :image_description, :location_id
  json.url graffiti_picture_url(graffiti_picture, format: :json)
end
