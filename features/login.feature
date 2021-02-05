#language:pt 

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFLix
    Sendo um usuario previamente cadastrado
    Posso acessar o sistema com meu email e senha

    #BDD (DESENVOLVIMENTO GUIADO POR COMPARTAMENTO)
    
    @temp
    Cenário: Acesso
        Quando eu faço login com "tony@stark.com" e "123456"
        Então devo ser autenticado
        E devo ver "Tony Stark" na area logada 

    Cenario: Senha inválida
        Quando eu faço login com "tony@stark.com" e "abc123"   
        Então então não devo ser autenticado 
        E devo ver a mensagem de alerta "usuario e/ou senha invalidos"

    Cenario: Usuario não existe
        Quando eu faço login com "404@yahoo.com" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "usuario e/ou senha invalidos"

    
    Cenario: Email não confirmado
        Quando eu faço login com "" e "abcxpto"
        Então não deve ser autenticado  
        E devo ver a mensagem de alerta "Opps. Cadê a senha?""
 