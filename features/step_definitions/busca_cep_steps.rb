Dado('o usuário busque pelo cep {string}') do |cep|
  @payload = cep
end

Quando('realizar a requisição GET na API') do
  @response = @service.call(ViaCep).search_cep(@payload)
end

Então('deverá retornar o código {int}') do |expect_code|
  expect(@response.code).to eql expect_code
end
