# Casos de Teste Manuais - Swag Labs

## Módulo: Login

| CT ID | Título | Pré-condição | Passos | Dados de Teste | Resultado Esperado | Prioridade | Status |
|---|---|---|---|---|---|---|---|
| CT-001 | Login com usuário válido | Acessar https://www.saucedemo.com/ | 1. Informar usuário 2. Informar senha 3. Clicar em Login | user: standard_user / senha: secret_sauce | Redirecionado para inventory.html com lista de produtos | Alta | Pendente |
| CT-002 | Login com senha inválida | Acessar página de login | 1. Informar usuário válido 2. Informar senha incorreta 3. Clicar em Login | user: standard_user / senha: senhaerrada | Exibir: "Epic sadface: Username and password do not match any user in this service" | Alta | Pendente |
| CT-003 | Login com usuário vazio | Acessar página de login | 1. Deixar usuário vazio 2. Informar senha 3. Clicar em Login | user: vazio / senha: secret_sauce | Exibir mensagem de erro de campo obrigatório | Alta | Pendente |
| CT-004 | Login com locked_out_user | Acessar página de login | 1. Informar locked_out_user 2. Informar secret_sauce 3. Clicar em Login | user: locked_out_user / senha: secret_sauce | Exibir: "Epic sadface: Sorry, this user has been locked out." | Alta | Pendente |

## Módulo: Catálogo de Produtos

| CT ID | Título | Pré-condição | Passos | Dados de Teste | Resultado Esperado | Prioridade | Status |
|---|---|---|---|---|---|---|---|
| CT-005 | Visualizar lista de produtos | Logado com standard_user | 1. Acessar página inventory 2. Verificar exibição | standard_user/secret_sauce | Exibir mínimo 6 produtos com imagem, nome, descrição e preço | Alta | Pendente |
| CT-006 | Ordenar produtos por nome (A-Z) | Logado e na tela de produtos | 1. Clicar no dropdown de ordenação 2. Selecionar "Name (A to Z)" | standard_user/secret_sauce | Produtos ordenados alfabeticamente A-Z | Média | Pendente |
| CT-007 | Ordenar produtos por preço (Lo-Hi) | Logado e na tela de produtos | 1. Clicar dropdown 2. Selecionar "Price (low to high)" | standard_user/secret_sauce | Produtos ordenados do menor para o maior valor | Média | Pendente |

## Módulo: Carrinho

| CT ID | Título | Pré-condição | Passos | Dados de Teste | Resultado Esperado | Prioridade | Status |
|---|---|---|---|---|---|---|---|
| CT-008 | Adicionar produto ao carrinho | Logado na tela de produtos | 1. Clicar em "Add to cart" em qualquer produto | Sauce Labs Backpack | Botão muda para "Remove" e badge do carrinho aparece com "1" | Alta | Pendente |
| CT-009 | Adicionar múltiplos produtos | Logado na tela de produtos | 1. Adicionar 3 produtos diferentes | Vários produtos | Badge exibe "3" | Alta | Pendente |
| CT-010 | Remover produto do carrinho | Produto adicionado ao carrinho | 1. Acessar carrinho 2. Clicar em "Remove" | Sauce Labs Bike Light | Produto removido da lista e badge atualizado | Alta | Pendente |
| CT-011 | Continuar comprando | Acessar carrinho com produto | 1. Clicar em "Continue Shopping" | Com item adicionado | Retorna para página de produtos (/inventory.html) | Média | Pendente |

## Módulo: Checkout

| CT ID | Título | Pré-condição | Passos | Dados de Teste | Resultado Esperado | Prioridade | Status |
|---|---|---|---|---|---|---|---|
| CT-012 | Checkout com dados válidos | Carrinho com pelo menos 1 produto | 1. Clicar "Checkout" 2. Preencher dados 3. Clicar "Continue" 4. Clicar "Finish" | First: Miss / Last: Dev / Zip: 12345 | Exibir "Thank you for your order!" com botão "Back Home" | Alta | Pendente |
| CT-013 | Checkout sem First Name | Carrinho com produto | 1. Clicar "Checkout" 2. Deixar First Name vazio 3. Preencher demais 4. Clicar "Continue" | Last: Dev / Zip: 12345 | Exibir erro "Error: First Name is required" | Alta | Pendente |
| CT-014 | Checkout sem Last Name | Carrinho com produto | 1. Clicar "Checkout" 2. Preencher First Name 3. Deixar Last Name vazio 4. Preencher Zip 5. Clicar "Continue" | First: Miss / Zip: 12345 | Exibir erro "Error: Last Name is required" | Alta | Pendente |
| CT-015 | Checkout sem Zip Code | Carrinho com produto | 1. Clicar "Checkout" 2. Preencher First/Last 3. Deixar Zip vazio 4. Clicar "Continue" | First: Miss / Last: Dev | Exibir erro "Error: Postal Code is required" | Alta | Pendente |
| CT-016 | Cancelar checkout | Na tela de informações do checkout | 1. Clicar em "Cancel" | N/A | Retorna para página do carrinho | Média | Pendente |