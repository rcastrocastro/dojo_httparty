#language:pt

Funcionalidade: Buscar CEP

Cenário: Buscar CEP Válido
  Dado o usuário busque pelo cep "02321170"
  Quando realizar a requisição GET na API
  Então deverá retornar o código 200
  