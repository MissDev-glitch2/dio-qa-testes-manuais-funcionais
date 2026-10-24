#language: pt

Funcionalidade: Fluxo de compra no Swag Labs
  Como usuário do Swag Labs
  Eu quero realizar uma compra
  Para adquirir produtos da loja

  Contexto:
    Dado que acesso a página de login do Swag Labs "https://www.saucedemo.com/"

  @login @positivo
  Cenário: Login com credenciais válidas
    Dado que informo o usuário "standard_user"
    E informo a senha "secret_sauce"
    Quando clico no botão "Login"
    Então devo ser redirecionado para a página de produtos
    E devo visualizar a lista de produtos

  @login @negativo
  Cenário: Login com credenciais inválidas
    Dado que informo o usuário "usuario_invalido"
    E informo a senha "senha_invalida"
    Quando clico no botão "Login"
    Então devo visualizar a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

  @carrinho @positivo
  Cenário: Adicionar produto ao carrinho
    Dado que estou logado com o usuário "standard_user"
    E estou na página de produtos
    Quando adiciono o produto "Sauce Labs Backpack" ao carrinho
    Então o botão deve exibir "Remove"
    E o carrinho deve exibir "1" item

  @carrinho @positivo
  Cenário: Visualizar carrinho com produtos
    Dado que adicionei "Sauce Labs Bike Light" ao carrinho
    Quando acesso a página do carrinho
    Então devo visualizar o produto "Sauce Labs Bike Light" na lista
    E devo visualizar o botão "Checkout"

  @checkout @positivo
  Cenário: Finalizar compra com dados válidos
    Dado que tenho produtos no carrinho
    E acesso a tela de checkout
    Quando preencho "First Name" com "Miss"
    E preencho "Last Name" com "Dev"
    E preencho "Zip/Postal Code" com "12345"
    E clico em "Continue"
    E na tela de resumo clico em "Finish"
    Então devo visualizar a mensagem "Thank you for your order!"
    E devo visualizar o botão "Back Home"

  @checkout @negativo
  Cenário: Tentar finalizar checkout sem informar First Name
    Dado que tenho produtos no carrinho
    E acesso a tela de informações de checkout
    Quando não preencho o campo "First Name"
    E preencho "Last Name" com "Dev"
    E preencho "Zip/Postal Code" com "12345"
    E clico em "Continue"
    Então devo visualizar a mensagem de erro "Error: First Name is required"
