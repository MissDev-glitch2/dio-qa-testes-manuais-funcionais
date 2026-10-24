# Plano de Testes - Swag Labs

## 1. Objetivo
Validar os principais fluxos funcionais do sistema Swag Labs, garantindo que as funcionalidades de login, carrinho e checkout estejam funcionando conforme o esperado.

## 2. Escopo
**Dentro do escopo:**
- Autenticação (Login/Logout)
- Catálogo de produtos
- Carrinho de compras
- Finalização de compra (Checkout)
- Ordenação de produtos
- Validações de campos obrigatórios

**Fora do escopo:**
- Testes automatizados
- Testes de performance
- Testes de segurança (SQL Injection, XSS)
- Responsividade mobile
- Testes em outros navegadores

## 3. Massa de Teste
| Usuário | Senha | Observação |
|---|---|---|
| standard_user | secret_sauce | Usuário padrão com acesso completo |
| locked_out_user | secret_sauce | Usuário bloqueado |
| problem_user | secret_sauce | Usuário com problemas na interface |
| performance_glitch_user | secret_sauce | Usuário com lentidão simulada |
| error_user | secret_sauce | Usuário com erros simulados |
| visual_user | secret_sauce | Usuário para testes visuais |

## 4. Critérios de Entrada
- [x] Sistema disponível em [https://www.saucedemo.com/](https://www.saucedemo.com/)
- [x] Massa de testes conhecida
- [x] Histórias de usuário e critérios de aceite definidos
- [x] Ambiente acessível

## 5. Critérios de Saída
- [ ] Todos os casos de teste prioritários (Alta) executados
- [ ] Bugs críticos/altos registrados com evidências
- [ ] Relatório de execução atualizado
- [ ] Documentação completa revisada

## 6. Recursos Necessários
- **Ambiente:** Web (Chrome/Firefox/Edge)
- **Ferramentas:** Jira, Confluence, navegador com DevTools
- **Equipe:** QA Tester
- **Tempo estimado:** 4-6 horas

## 7. Riscos e Mitigações
| Risco | Impacto | Probabilidade | Mitigação |
|---|---|---|---|
| Sistema fora do ar | Alto | Baixa | Verificar disponibilidade antes da execução |
| Massa de teste alterada | Médio | Baixa | Utilizar apenas os usuários documentados |
| Alterações na interface | Médio | Baixa | Validar contra documentação |

## 8. Cronograma
| Atividade | Duração |
|---|---|
| Planejamento e análise | 1h |
| Criação de histórias, cenários e casos | 2h |
| Execução dos testes manuais | 2h |
| Registro de bugs e relatório final | 1h |
| **Total** | **6h** |
