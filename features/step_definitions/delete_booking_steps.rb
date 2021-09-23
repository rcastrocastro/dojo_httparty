Quando('realizar a requisição DELETE') do
  steps %(
    Quando enviar os dados da requisição do token
  )
  token = @token['token']
  id = @service.call(API_Common).cat_id_booking
  p "O ID que será deletado é #{id}"
  @response = @service.call(API_DeleteBooking).delete_booking(token, id)
end

Então('a API irá deletar a reserva especifica') do
  expect(@response.code).to eql 201
  expect(@response.message).to eql 'Created'
end
