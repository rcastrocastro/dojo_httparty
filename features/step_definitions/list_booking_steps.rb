Quando('realizar a requisição GET') do
  @response = @service.call(API_GetBooking).list_booking
  # assemble_evidence(@response)
end

Então('a API irá retornar as reservas cadastradas') do
  expect(@response.code).to eql 200
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('list_all_booking')
end

Quando('realizar a requisição GET por ID') do
  id = @service.call(API_Common).cat_id_booking
  p "O ID da Reserva a ser consultada é #{id}"
  @response = @service.call(API_GetBooking).list_booking_id(id)
  # assemble_evidence(@response)
end

Então('a API irá retornar a reserva especifica') do
  expect(@response.code).to eql 200
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('list_booking_id')
end
