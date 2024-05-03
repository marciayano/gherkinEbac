      #language: pt

      Funcionalidade: checkout
      Como cliente da Ebac-shop
      Quero concluir meu cadastro
      Para finalizar minha compra

      Contexto: concluir cadastro para checkout
      Dado que eu acesse a pagina cadastro da Ebac-shop com produto no carrinho

      Cenario: Cadastro válido
      Quando eu preencher os espacos obrigatorios
      Então deve habilitar o botao "Finalizar compra"

      Esquema do Cenario: Cadastro inválido
      Quando eu preencher os espacos <nome> <sobrenome> <pais> <endereco> <cidade> <cep> <telefone> <email>
      Então deve exibir <mensagem>

      Exemplos:
      | nome   | sobrenome | pais     | endereco     | cidade      | cep         | telefone        | email       | mensagem                                           |
      | "joao" | "paulo"   | "brasil" | "av. brasil" | "sao paulo" | "00000-000" | "(11)99999-999" | "joao.com " | "insira um email válido"                           |
      | "joao" | "paulo"   | "brasil" | " "          | " "         | " "         | " "             | " "         | "por favor preencher todos os campos obrigatorios" |
