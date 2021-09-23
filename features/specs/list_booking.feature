#language:pt

Funcionalidade: Consultar as reservas já cadastradas
  Como um usuário do sistema
  Quero realizar requisições GET na API
  Para que possa consultar as reservas cadastradas

@all_booking
Cenário: Consulta lista de reservas
  Quando realizar a requisição GET
  Então a API irá retornar as reservas cadastradas

@id_booking
Cenário: Consulta de reserva por ID
  Quando realizar a requisição GET por ID
  Então a API irá retornar a reserva especifica
