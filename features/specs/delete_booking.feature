#language: pt

Funcionalidade: Deletar reservas
  Como um usuário do sistema
  Eu quero realizar requisições DELETE na API
  Para que possa deletar uma reserva especifica

@delete
Cenário: Deletar reserva especifica
  Quando realizar a requisição DELETE
  Então a API irá deletar a reserva especifica