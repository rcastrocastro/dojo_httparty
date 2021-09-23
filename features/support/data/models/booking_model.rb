class BookingModel
  attr_accessor :firstname, :lastname, :totalprice, :bookingdates, :checkin, :checkout

  def to_hash
    {
      firstname: @firstname,
      lastname: @lastname,
      totalprice: @totalprice,
      bookingdates: {
        checkin: @checkin,
        checkout: @checkout
      }
    }
  end
end
