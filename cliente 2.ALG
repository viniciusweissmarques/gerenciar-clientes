var
    clientes: vetor[1..10] de registro
        nome: caractere
        idade: inteiro
    fimregistro
    opcao, i, totalClientes: inteiro

inicio
    totalClientes <- 0

    repita
        // Exibe o menu de op��es
        escreval("Menu de Op��es:")
        escreval("1. Adicionar Cliente")
        escreval("2. Listar Clientes")
        escreval("3. Sair")
        escreva("Escolha uma op��o: ")
        leia(opcao)

        // Estruturas de controle condicional para executar a a��o correspondente
        escolha opcao
            caso 1
                se totalClientes < 10 entao
                    totalClientes <- totalClientes + 1
                    escreva("Digite o nome do cliente: ")
                    leia(clientes[totalClientes].nome)
                    escreva("Digite a idade do cliente: ")
                    leia(clientes[totalClientes].idade)
                senao
                    escreval("N�o h� espa�o dispon�vel para adicionar mais clientes.")
                fimse
            caso 2
                para i de 1 ate totalClientes faca
                    escreval("Cliente ", i, ":")
                    escreval("Nome: ", clientes[i].nome)
                    escreval("Idade: ", clientes[i].idade)
                fimpara
            caso 3
                escreval("Saindo do programa...")
            outrocaso
                escreval("Op��o inv�lida. Tente novamente.")
        fimescolha
    ate opcao = 3
fimalgoritmo
