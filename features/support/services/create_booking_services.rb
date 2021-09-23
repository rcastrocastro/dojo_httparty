class CreateBooking
  include HTTParty
  base_uri CONFIG['URI_BOOKING']
  headers CONFIG['HEADER_BOOKING']
  default_timeout 120

  def initialize() end

  def create_new_booking(payload)
    bookingdates = {}
    bookingdates[:checkin] = payload[:bookingdates][:checkin]
    bookingdates[:checkout] = payload[:bookingdates][:checkout]

    body = {}
    body[:firstname] = payload[:firstname]
    body[:lastname] = payload[:lastname]
    body[:totalprice] = payload[:totalprice]
    body[:depositpaid] = true
    body[:bookingdates] = bookingdates
    body[:additionalneeds] = 'Breakfast'

    self.class.headers 'Accept' => 'application/json'
    self.class.post('/booking', body: body.to_json)
  end
end
