#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma 
Para visualizar meus pedidos

Cenário: Login com dados validos 
Dado que estou na página de login da EBAC-SHOP
Quando eu preencher os campos com <usuario> e <senha> válidos
E clicar em "Entrar"
Então devo ser redirecionado para a tela de checkout

Cenário: Login com senha inválida
Dado que estou na página de login da EBAC-SHOP
Quando eu preencher os campos com <usuario> (ou) <senha> inválidos
E clicar em "Entrar"
Então devo ver uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login com campos vazios
Dado que estou na página de login da EBAC-SHOP
Quando eu deixar os campos <usuario> e <senha> vazios
E clicar em "Entrar"
Então devo ver mensagens de alerta indicando que os campos são obrigatórios





 