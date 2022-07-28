               #language: pt
               Funcionalidade: cadastro de usuário
               COMO usuário do sistema.
               DESEJO realizar o cadastro de novos usuários.
               PARA QUE seja possível armazenar e gerenciar seus dados.

               Contexto:
               Dado que esteja na página de de cadastro de usuário

               Cenario: Entrar na tela vazia
               Quando estiver na tela de cadastro antes de preencher qualquer item
               Então o campo nome devera estar vazio
               E o campo email deve estar vazio
               E campo de senha deve estar vazio
               E a tabela de usuários não deve estar sendo exibida

               Cenario: Cadastrar um usuário com sucesso
               Quando preencher o formulario com dados validos
               E clicar no botão Cadastrar
               Então o usuário e seus dados devem aparecer na tabela de usuários abaixo do formulario

               Cenario: excluir um usuário com sucesso
               Dado ter um usuário cadastrado
               Quando clicar no botão excluir ao lado dos dados de usuário
               Então o usuário e seus dados devem sem apagados
               E o id e os dados dos outros usuários não deve ser mudados

               Cenario: não preencher todos os campos
               Quando clicar no botão Cadastrar
               Então devera aparecer uma mensagem embaixo de todos os campos dizendo que eles são obrigatorios
               E não deve ser adicionado nenhum usuário na tabela de  usuários

               Esquema do Cenario: não preencher campos
               Quando preencher todos os campos mas não preencher o campo "<campo>"
               E clicar no botão Cadastrar
               Então Devera aparecer uma mensagem abaixo do campo  dizendo "<msg>"
               E não deve ser adicionado nenhum usuário na tabela de  usuários

               Exemplos:

               | Campo | msg                         |
               | email | o campo email é obrigatorio |
               | nome  | o campo nome é obrigatorio  |
               | senha | o campo senha é obrigatorio |

               Cenario: preencher formulario com nome incompleto
               Quando preencher os campos de email e senha com dados validos
               E preencher o campo de nome com só o primeiro nome
               E clicar no botão Cadastrar
               Então devera aparecer uma mensagem abaixo do campo de nome dizendo "Por favor, insira um nome completo."
               E não deve ser adicionado nenhum usuário na tabela de  usuários

               Cenario: preencher formulario com email invalido
               Quando preencher os campos de nome e senha com dados validos
               E preencher o campo de email com e-mail invalido
               E clicar no botão Cadastrar
               Então devera aparecer uma mensagem abaixo do campo de e-mail dizendo "Por favor, insira um e-mail válido."
               E não deve ser adicionado nenhum usuário na tabela de  usuários

               Cenario: preencher formulario com senha invalida
               Quando preencher os campos de nome e email com dados validos
               E preencher o campo de senha com uma senha com menos de  oito caracteres
               E clicar no botão Cadastrar
               Então devera aparecer uma mensagem abaixo do campo de senha dizendo "A senha deve conter ao menos 8 caracteres."
               E não deve ser adicionado nenhum usuário na tabela de usuários

