Quando('realizar a requisição POST') do
  payload = FactoryBot.build(:create_booking).to_hash
  @response = @service.call(CreateBooking).create_new_booking(payload)
  # assemble_evidence(@response)
end

Então('a API irá cadastrar a nova reserva') do
  expect(@response.code).to eql 200
  expect(@response.message).to eql 'OK'
  p @response.body
  expect(@response.body).to match_json_schema('create_booking')
end
