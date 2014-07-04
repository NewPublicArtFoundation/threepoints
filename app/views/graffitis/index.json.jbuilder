json.array!(@graffitis) do |graffiti|
  json.extract! graffiti, :id, :description, :discovered_at, :painted_at, :buffed_at
  json.url graffiti_url(graffiti, format: :json)
end
