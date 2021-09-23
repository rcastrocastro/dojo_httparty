FactoryBot.define do
  factory :create_booking, class: BookingModel do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    totalprice { Faker::Base.numerify('###') }
    checkin { (Date.today).strftime('%Y-%m-%d').to_s }
    checkout { (Date.today + 365).strftime('%Y-%m-%d').to_s }
  end

  factory :update_booking, class: BookingModel do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    totalprice { Faker::Base.numerify('###') }
    checkin { (Date.today).strftime('%Y-%m-%d').to_s }
    checkout { (Date.today + 730).strftime('%Y-%m-%d').to_s }
  end
end
