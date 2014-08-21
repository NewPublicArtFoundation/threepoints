json.array!(@arts) do |art|
  json.extract! art, :id, :description, :location_id, :artist_id, :slug, :name
  json.url art_url(art, format: :json)
end
