#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP 
Quero Configurar meu produto de acordo com tamanho e cor e quantidade
Para depois inserir no carrinho

Contexto: Dado que estou na página de um produto

Esquema do Cenário: Configuração de produto com dados válidos  
Quando eu selecionar a cor "<cor>","<tamanho>" e "<quantidade>"
E clicar em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao meu carrinho com as configurações selecionadas

Exemplos:
| cor      | tamanho | quantidade |
| Vermelho | M       | 1          |
| Azul     | G       | 3          |
| Preto    | P       | 10         |

Cenário: Configuração de produto com campos obrigatórios não preenchidos
Quando eu clicar em "Adicionar ao carrinho" sem selecionar cor, tamanho e quantidade
Então devo receber mensagens de alerta indicando que os campos obrigatórios devem ser preenchidos

Cenário: Configuração de produto com quantidade acima do limite
Quando eu selecionar a "<cor>","<tamanho>" e "<quantidade>"
Se quantidade ultrapassar 10 itens 
E eu clicar em "Adicionar ao carrinho"
Então devo ver uma mensagem de erro indicando que a quantidade máxima permitida é 10

Cenário: Limpar configurações do produto
Quando eu selecionar a "<cor>","<tamanho>" e "<quantidade>"
E clicar em "Limpar"
Então as configurações de cor, tamanho e quantidade devem ser redefinidas para o estado original




