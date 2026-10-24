# Histórias de Usuário - Swag Labs

## HU-001 - Realizar Login
**Como** usuário cadastrado  
**Quero** realizar login no Swag Labs  
**Para** ter acesso ao catálogo de produtos

### Critérios de Aceite
- [ ] O usuário deve conseguir logar com credenciais válidas
- [ ] O sistema deve exibir mensagem de erro ao utilizar credenciais inválidas
- [ ] Ao logar com sucesso, deve redirecionar para a página de produtos (`/inventory.html`)
- [ ] Campos obrigatórios devem ser validados

---

## HU-002 - Visualizar Produtos
**Como** usuário autenticado  
**Quero** visualizar a lista de produtos  
**Para** escolher o que desejo comprar

### Critérios de Aceite
- [ ] Devem ser exibidos todos os produtos disponíveis
- [ ] Cada produto deve exibir imagem, nome, descrição, preço e botão "Add to cart"
- [ ] Deve ser possível ordenar os produtos por nome (A-Z, Z-A) e por preço (Lo-Hi, Hi-Lo)
- [ ] A lista deve ser carregada corretamente após o login

---

## HU-003 - Adicionar Produto ao Carrinho
**Como** usuário autenticado  
**Quero** adicionar produtos ao carrinho  
**Para** comprar os itens selecionados

### Critérios de Aceite
- [ ] Ao clicar em "Add to cart", o botão deve mudar para "Remove"
- [ ] O ícone do carrinho deve exibir a quantidade de itens adicionados
- [ ] Deve ser possível adicionar mais de um produto ao carrinho
- [ ] O carrinho deve persistir entre as navegações

---

## HU-004 - Visualizar Carrinho de Compras
**Como** usuário autenticado  
**Quero** visualizar o carrinho de compras  
**Para** conferir os itens adicionados

### Critérios de Aceite
- [ ] Deve exibir todos os produtos adicionados com nome, descrição, preço e quantidade
- [ ] Deve exibir o valor total dos itens
- [ ] Deve possuir os botões "Continue Shopping" e "Checkout"
- [ ] Deve ser possível remover itens do carrinho

---

## HU-005 - Finalizar Compra (Checkout)
**Como** usuário autenticado  
**Quero** finalizar a compra  
**Para** efetivar meu pedido

### Critérios de Aceite
- [ ] Deve solicitar informações obrigatórias: First Name, Last Name e Zip/Postal Code
- [ ] Ao preencher corretamente, deve avançar para a tela de resumo da compra
- [ ] Na tela de resumo, deve exibir itens, valor dos produtos, frete e valor total
- [ ] Ao clicar em "Finish", deve exibir a mensagem "Thank you for your order!"
- [ ] Após finalizar, deve ser possível retornar à página inicial
