# Relatório de Bugs - Swag Labs

## BUG-001 - Usuário locked_out_user consegue acessar o sistema? 
**Status:** Aberto  
**Severidade:** Alta  
**Prioridade:** Alta  
**Módulo:** Login  
**Ambiente:** Chrome 131 / Windows 11  

### Descrição
Ao tentar realizar login com o usuário `locked_out_user`, o sistema exibe a mensagem correta de bloqueio, impedindo o acesso. Este comportamento está conforme esperado.

### Passos para Reproduzir
1. Acessar [https://www.saucedemo.com/](https://www.saucedemo.com/)
2. Preencher o campo "Username" com `locked_out_user`
3. Preencher o campo "Password" com `secret_sauce`
4. Clicar no botão "Login"

### Resultado Esperado
Sistema deve bloquear o acesso e exibir: *"Epic sadface: Sorry, this user has been locked out."*

### Resultado Obtido
Sistema exibe corretamente a mensagem de bloqueio. **Não é um bug, é comportamento esperado.**

---

## BUG-002 - Botão "Add to cart" não muda para "Remove" em alguns produtos
**Status:** Aberto  
**Severidade:** Média  
**Prioridade:** Média  
**Módulo:** Carrinho  
**Ambiente:** Chrome 131 / Windows 11  
**Usuário:** problem_user  

### Descrição
Ao utilizar o usuário `problem_user`, ao adicionar determinados produtos ao carrinho, o botão não atualiza corretamente para "Remove", podendo confundir o usuário.

### Passos para Reproduzir
1. Logar com `problem_user` / `secret_sauce`
2. Na tela de produtos, adicionar o produto "Sauce Labs Fleece Jacket" ao carrinho
3. Observar o botão do produto

### Resultado Esperado
Botão deve alterar de "Add to cart" para "Remove" após adicionado ao carrinho.

### Resultado Obtido
Botão permanece como "Add to cart" mesmo após clicar, ou não atualiza corretamente.

### Evidências
*Screenshot: problema_na_interface_problem_user.png*

---

## BUG-003 - Imagens dos produtos não carregam com problem_user
**Status:** Aberto  
**Severidade:** Média  
**Prioridade:** Média  
**Módulo:** Catálogo  
**Ambiente:** Chrome 131 / Windows 11  
**Usuário:** problem_user  

### Descrição
Utilizando o usuário `problem_user`, as imagens dos produtos apresentam falha no carregamento, exibindo imagem quebrada ou incorreta.

### Passos para Reproduzir
1. Logar com `problem_user` / `secret_sauce`
2. Observar as imagens na tela de produtos

### Resultado Esperado
Todas as imagens dos produtos devem ser carregadas corretamente.

### Resultado Obtido
Algumas imagens não carregam ou são exibidas incorretamente.

### Evidências
*Screenshot: imagens_quebradas_problem_user.png*

---

## BUG-004 - Ordenação por preço não funciona com performance_glitch_user
**Status:** Aberto  
**Severidade:** Baixa  
**Prioridade:** Média  
**Módulo:** Ordenação  
**Ambiente:** Chrome 131 / Windows 11  
**Usuário:** performance_glitch_user  

### Descrição
Ao utilizar `performance_glitch_user`, ao tentar ordenar por preço (Lo-Hi ou Hi-Lo), a listagem demora excessivamente ou não respeita a ordenação correta.

### Passos para Reproduzir
1. Logar com `performance_glitch_user` / `secret_sauce`
2. Clicar no dropdown de ordenação
3. Selecionar "Price (low to high)"
4. Observar a ordenação dos produtos

### Resultado Esperado
Produtos devem ser ordenados corretamente por valor.

### Resultado Obtido
Há lentidão significativa e, em alguns casos, a ordenação não é aplicada corretamente.

### Evidências
*Vídeo: delay_ordenacao_performance_glitch_user.mp4*

---

## Matriz de Severidade x Prioridade

| Severidade | Descrição |
|---|---|
| **Crítica** | Bloqueia fluxo principal, impede conclusão de compra |
| **Alta** | Impede funcionalidade importante, mas tem workaround |
| **Média** | Impacta experiência, mas funcionalidade principal funciona |
| **Baixa** | Problema cosmético ou de baixa relevância |
