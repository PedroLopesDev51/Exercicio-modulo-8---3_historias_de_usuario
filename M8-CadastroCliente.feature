#language: pt

Funcionalidade: Cadastro de Cliente
Como Cliente da EBAC-SHOP
Quero fazer meu cadastro
Para concluir minha compra

Esquema do Cenário: Cadastro com dados válidos
Dado que estou na página de cadastro da EBAC-SHOP
Quando eu preencher os campos <nome>, <sobrenome>, <email> e <senha> 
Então devo ser redirecionado para a página de confirmação de cadastro
E devo ver a mensagem "Cadastro realizado com sucesso"

Exemplos:
| nome      | sobrenome | email             | senha     |
| João      | Silva     | joao.silva@email.com | senha123  |
| Maria     | Oliveira  | maria.oliveira@email.com | minhaSenha |
| Carlos    | Souza     | carlos.souza@email.com | 12345678  |

Cenário: Cadastro com e-mail inválido
Dado que estou na página de cadastro da EBAC-SHOP
Quando eu preencher o campo <email> com um email inválido
Então devo ver uma mensagem de erro indicando que o e-mail é inválido

Cenário: Cadastro com campos vazios
Dado que estou na página de cadastro da EBAC-SHOP
Quando eu deixar os campos obrigatórios vazios
Então devo ver mensagens de alerta indicando que os campos obrigatórios devem ser preenchidos
