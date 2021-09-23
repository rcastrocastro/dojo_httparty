class API_GetBooking
  include HTTParty
  base_uri CONFIG['URI_BOOKING']
  headers CONFIG['HEADER_BOOKING']
  default_timeout 120

  def initialize() end

  def list_booking
    self.class.get('/booking')
  end

  def list_booking_id(id)
    self.class.get("/booking/#{id}")
  end
end
