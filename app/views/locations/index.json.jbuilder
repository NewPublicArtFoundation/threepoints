json.array!(@locations) do |location|
  json.extract! location, :id, :city_name, :country_name, :address, :longitude, :latitude
  json.url location_url(location, format: :json)
end
