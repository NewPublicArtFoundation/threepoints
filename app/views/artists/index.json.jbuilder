json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :description, :began_at
  json.url artist_url(artist, format: :json)
end
