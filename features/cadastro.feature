            #language: pt
            Funcionalidade: Cadastrar usuários
            Possibilidade do usuário
            Realizar cadastro no sistema
            Para poder gerenciar suas tarefas

            Contexto: Formulário
            Dado que o usuário esteja no formulário de cadastro

            Cenário: Cadastro simples
            E informe o seguinte dados:
            | nome  | pedro           |
            | email | pedro@teste.com |
            | senha | 123456          |
Quando realizar o cadastro
Então usuário vê a seguinte mensagem: "Olá, pedro"
