#language: pt

      Funcionalidade: login na plataforma
      Como cliente da Ebac-shop
      Quero fazer o login (autenticação) na plataforma  
      Para visualizar meus pedidos

      Contexto: fazer login para visualizar pedidos
      Dado que eu acesse a pagina de login da Ebac-shop

      Cenario: Login válido
      Quando eu preencher login válido
      E senha válida
      Então deve ser direcionado para a tela de checkout

      Cenario: Login inválido
      Quando eu preencher senha inválida
      Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

