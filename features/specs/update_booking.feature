#language:pt

Funcionalidade: Atualizar reservas
  Como usuário do sistema
  Quero realizar requisições PUT na API
  Para atualizar uma reserva especifica

@put
Cenário: Atualizar reserva especifica
  Quando realizar a requisição PUT
  Então a API irá atualizar a reserva especifica
