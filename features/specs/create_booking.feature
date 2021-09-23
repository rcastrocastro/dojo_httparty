#language:pt

Funcionalidade: Cadastrar novas reservas
  Como um usuário do sistema
  Quero realizar requisições POST na API
  Para que possa cadastrar as novas reservas

@booking
Cenário: Cadastrar nova reserva
  Quando realizar a requisição POST
  Então a API irá cadastrar a nova reserva
  