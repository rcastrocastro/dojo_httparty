Quando('enviar os dados da requisição do token') do
  @token = @service.call(API_TOKEN).generate_token
end

Então('a API irá retornar os dados de um novo token') do
  expect(@token.code).to eql 200
  expect(@token.message).to eql 'OK'
  expect(@token.body).to match_json_schema('generate_token')
end
