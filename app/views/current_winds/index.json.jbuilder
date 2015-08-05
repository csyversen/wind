json.array!(@current_winds) do |current_wind|
  json.extract! current_wind, :id
  json.url current_wind_url(current_wind, format: :json)
end
