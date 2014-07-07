json.array!(@artist_graffitis) do |artist_graffiti|
  json.extract! artist_graffiti, :id, :artist_id, :graffiti_id
  json.url artist_graffiti_url(artist_graffiti, format: :json)
end
