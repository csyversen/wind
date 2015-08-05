class CurrentWind
  include ActiveModel::Model
  require 'forecast_io'

  attr_accessor :lat, :long

  GREENWOOD_BEACH = { lat: '42.043197', long: '-87.671366' }

  def initialize( attributes={} )
    super
    ForecastIO.api_key = Rails.application.secrets.forecast_api_key
  end

  def speed
    @forecast ||= get_forecast
    @forecast.hourly.data.first.windSpeed
  end

  def bearing
    @forecast ||= get_forecast
    @forecast.hourly.data.first.windBearing
  end

  private

  # this isn't great forever, we'll have to expire it at some point.
  # but it saves on api requests for now
  def get_forecast
    @forecast = ForecastIO.forecast( GREENWOOD_BEACH[:lat], GREENWOOD_BEACH[:long] )
  end


end
