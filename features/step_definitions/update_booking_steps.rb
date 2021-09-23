Quando('realizar a requisição PUT') do
  steps %(
    Quando enviar os dados da requisição do token
  )
  token = @token['token']
  id = @service.call(API_Common).cat_id_booking
  payload = FactoryBot.build(:update_booking).to_hash
  @response = @service.call(API_PutBooking).update_booking(token, id, payload)
  # assemble_evidence(@response)
end

Então('a API irá atualizar a reserva especifica') do
  expect(@response.code).to eql 200
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('update_booking')
end
