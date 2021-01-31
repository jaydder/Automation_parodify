#language: pt

Funcionalidade: Cadastro de Usuário
  Sendo um visitante do site Parodify
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas

  @happy
  Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
      | email          | jaydder@gmail.com |
      | senha          | pwd123            |
      | senha_confirma | pwd123            |
    Então devo ser redirecionado para a área logada

  Esquema do Cenário: Tentativa de cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
      | email          | <email>          |
      | senha          | <senha>          |
      | senha_confirma | <senha_confirma> |
    Então devo ver a menssagem "<mensagem_saida>"

    Exemplos:
      | email             | senha  | confirma_senha | mensagem_saida                       |
      |                   | pwd123 | pwd123         | Oops! Informe seu email.             |
      | jaydder@gmail.com |        |                | Oops! Informe sua senha.             |
      | jaydder@gmail.com | pwd123 | 12344          | Oops! Senhas não são iguais.         |
      |                   |        |                | Oops! Informe seu email e sua senha. |

  @temp
  Cenario: Validação do campo email
    Quando acesso a página de cadastro
    Então deve exibir o seguinte css: "input[type=email]"
