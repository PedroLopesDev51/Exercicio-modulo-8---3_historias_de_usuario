#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP 
Quero Configurar meu produto de acordo com tamanho e cor e quantidade
Para depois inserir no carrinho

Contexto: Dado que estou na página de um produto

Esquema do Cenário: Configuração de produto com dados válidos  
Quando seleciono a cor "<cor>"
E seleciono o tamanho "<tamanho>"
E seleciono a quantidade "<quantidade>"
E clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao meu carrinho com as configurações selecionadas

Exemplos:
| cor      | tamanho | quantidade |
| Vermelho | M       | 1          |
| Azul     | G       | 3          |
| Preto    | P       | 10         |

Cenário: Configuração de produto com campos obrigatórios não preenchidos
Quando clico em "Adicionar ao carrinho" sem selecionar cor, tamanho e quantidade
Então devo ver mensagens de alerta indicando que os campos obrigatórios devem ser preenchidos

Cenário: Configuração de produto com quantidade acima do limite
Quando seleciono a cor "Verde"
E seleciono o tamanho "GG"
E seleciono a quantidade "11"
E clico em "Adicionar ao carrinho"
Então devo ver uma mensagem de erro indicando que a quantidade máxima permitida é 10

Cenário: Limpar configurações do produto
Quando seleciono a cor "Amarelo"
E seleciono o tamanho "PP"
E seleciono a quantidade "5"
E clico em "Limpar"
Então as configurações de cor, tamanho e quantidade devem ser redefinidas para o estado original




Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma 
Para visualizar meus pedidos

Cenário: Login com dados validos 
Dado que estou na página de login da EBAC-SHOP
Quando preencho o campo "Usuário" com "usuario_valido"
E preencho o campo "Senha" com "senha_valida"
E clico em "Entrar"
Então devo ser redirecionado para a tela de checkout

Cenário: Login com senha inválida
Dado que estou na página de login da EBAC-SHOP
Quando preencho o campo "Usuário" com "usuario_valido"
E preencho o campo "Senha" com "senha_invalida"
E clico em "Entrar"
Então devo ver uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login com campos vazios
Dado que estou na página de login da EBAC-SHOP
Quando deixo os campos "Usuario" e "Senha" vazios
E clico em "Entrar"
Então devo ver mensagens de alerta indicando que os campos são obrigatórios





Funcionalidade: Cadastro de Cliente
Como Cliente da EBAC-SHOP
Quero fazer meu cadastro
Para concluir minha compra

Esquema do Cenário: Cadastro com dados válidos
Dado que estou na página de cadastro da EBAC-SHOP
Quando preencho os campos obrigatórios com:
| nome      | sobrenome | email             | senha     |
| <nome>    | <sobrenome> | <email>           | <senha>   |
E clico em "Concluir Cadastro"
Então devo ser redirecionado para a página de confirmação de cadastro
E devo ver a mensagem "Cadastro realizado com sucesso"

Exemplos:
| nome      | sobrenome | email             | senha     |
| João      | Silva     | joao.silva@email.com | senha123  |
| Maria     | Oliveira  | maria.oliveira@email.com | minhaSenha |
| Carlos    | Souza     | carlos.souza@email.com | 12345678  |

Cenário: Cadastro com e-mail inválido
Dado que estou na página de cadastro da EBAC-SHOP
Quando preencho os campos obrigatórios com dados válidos
E preencho o campo "email" com "email_invalido"
E clico em "Concluir Cadastro"
Então devo ver uma mensagem de erro indicando que o e-mail é inválido

Cenário: Cadastro com campos vazios
Dado que estou na página de cadastro da EBAC-SHOP
Quando deixo os campos obrigatórios vazios
E clico em "Concluir Cadastro"
Então devo ver mensagens de alerta indicando que os campos obrigatórios devem ser preenchidos
