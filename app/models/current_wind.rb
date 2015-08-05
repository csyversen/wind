class CurrentWind
  include ActiveModel::Model
  require 'forecast_io'

  attr_accessor :lat, :long

  GREENWOOD_BEACH = { lat: '42.043197', long: '-87.671366' }

  def initialize( attributes={} )
    super
    ForecastIO.api_key = Rails.application.secrets.forecast_api_key
  end

  def wind
    f = ForecastIO.forecast( GREENWOOD_BEACH[:lat], GREENWOOD_BEACH[:long] )
    f.hourly.data.first.windSpeed
  end



end
