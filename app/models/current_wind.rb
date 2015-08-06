class CurrentWind
  include ActiveModel::Model
  require 'forecast_io'

  attr_accessor :lat, :lng

  GREENWOOD_BEACH = { lat: '42.043197', lng: '-87.671366' }

  def initialize( params={} )
    super
    ForecastIO.api_key = ENV["forecast_api_key"]
  end

  def speed
    @forecast ||= get_forecast
    @forecast.hourly.data.first.windSpeed
  end

  def bearing
    @forecast ||= get_forecast
    @forecast.hourly.data.first.windBearing
  end

  def location
    loc = Geokit::Geocoders::GoogleGeocoder.reverse_geocode "#{lat},#{lng}"
  end

  private

  # this isn't great forever, we'll have to expire it at some point.
  # but it saves on api requests for now
  def get_forecast
    @forecast = ForecastIO.forecast( lat, lng )
  end


end
