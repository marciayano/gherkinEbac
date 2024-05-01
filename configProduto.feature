      #language: pt

      Funcionalidade: configurar produto
      Como cliente da Ebac-shop
      Quero configurar meu produto de acordo com minhas preferencias
      E escolher a quantidade
      Para depois inserir no carrinho

      Contexto: inserir um produto no carrinho
      Dado que eu acesse a pagina de uma vestimenta da Ebac-shop

      Cenario: limpar produto
      Quando eu preencher a cor, tamanho, quantidade desejada
      E clicar no botao "Limpar"
      Então deve voltar ao estado original

      Cenario: Inserir produto com sucesso
      Quando eu preencher a cor, tamanho
      E quantidade ate 10 produtos
      Então deve habilitar o botao "Comprar"

      Esquema do Cenario: Inserir produto sem sucesso
      Quando eu preencher os espacos <tamanho>, <cor>
      E <quantidade>
      Então deve exibir <mensagem>

      Exemplos:
      | tamanho | cor     | quantidade | mensagem                                                                |
      | "M"     | ""      | 10         | “Selecione uma das opções do produto antes de adicioná-lo ao carrinho.” |
      | "M"     | "Preto" | 11         | “é permido apenas 10 itens por produto”                                 |
