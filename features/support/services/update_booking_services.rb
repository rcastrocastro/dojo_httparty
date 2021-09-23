class API_PutBooking
  include HTTParty
  base_uri CONFIG['URI_BOOKING']
  headers CONFIG['HEADER_BOOKING']
  default_timeout 120

  def initialize() end

  def update_booking(token, id, payload)
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

    self.class.headers 'Accept' => 'application/json', 'Cookie' => "token=#{token}"
    self.class.put("/booking/#{id}", body: body.to_json)
  end
end
