class API_Common
  include HTTParty
  base_uri CONFIG['URI_BOOKING']
  headers CONFIG['HEADER_BOOKING']
  default_timeout 120

  def initialize() end

  def cat_id_booking
    result = self.class.get('/booking').sample
    result['bookingid']
  end
end
