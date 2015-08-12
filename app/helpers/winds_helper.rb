module WindsHelper
  include Geokit::Geocoders

  def ip_lookup( ip )
    loc = MultiGeocoder.geocode( ip )
  end
end
