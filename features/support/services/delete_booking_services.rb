class API_DeleteBooking
  include HTTParty
  base_uri CONFIG['URI_BOOKING']
  headers CONFIG['HEADER_BOOKING']
  default_timeout 120

  def initialize() end

  def delete_booking(token, id)
    self.class.headers 'Cookie' => "token=#{token}"
    self.class.delete("/booking/#{id}")
  end
end
