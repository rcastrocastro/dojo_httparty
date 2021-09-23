#language: pt

Funcionalidade: Gerar token
  Como um usuário do sistema
  Eu quero realizar requisições POST na API
  Para que possa gerar o token

@token
Cenário: Gerarção do token
  Quando enviar os dados da requisição do token
  Então a API irá retornar os dados de um novo token
