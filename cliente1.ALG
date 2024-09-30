Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/09/2024
// Algoritmo "GerenciamentoClientes"
// Algoritmo "GerenciamentoClientes"
var
    clientes: vetor[1..100] de registro
        nome: caractere
        telefone: caractere
        email: caractere
    fimregistro
    opcao, i, indice: inteiro
    encontrado: logico

// Função para adicionar cliente
procedimento AdicionarCliente()
var
    nome, telefone, email: caractere
    espacoDisponivel: logico
    i: inteiro
inicio
    espacoDisponivel <- falso
    para i de 1 ate 100 faca
        se clientes[i].nome = "" entao
            escreva("Digite o nome do cliente: ")
            leia(nome)
            escreva("Digite o telefone do cliente: ")
            leia(telefone)
            escreva("Digite o email do cliente: ")
            leia(email)
            clientes[i].nome <- nome
            clientes[i].telefone <- telefone
            clientes[i].email <- email
            espacoDisponivel <- verdadeiro
            escreval("Cliente adicionado com sucesso!")
            interrompa
        fimse
    fimpara
    se nao espacoDisponivel entao
        escreval("Não há espaço disponível para adicionar mais clientes.")
    fimse
fimalgoritmo

// Função para listar clientes
procedimento ListarClientes()
var
    i: inteiro
inicio
    para i de 1 ate 100 faca
        se clientes[i].nome <> "" entao
            escreval("Cliente ", i, ":")
            escreval("Nome: ", clientes[i].nome)
            escreval("Telefone: ", clientes[i].telefone)
            escreval("Email: ", clientes[i].email)
            escreval("-------------------------")
        fimse
    fimpara
fimalgoritmo

// Função para editar cliente
procedimento EditarCliente()
var
    indice: inteiro
    nome, telefone, email: caractere
inicio
    escreva("Digite o índice do cliente que deseja editar: ")
    leia(indice)
    se clientes[indice].nome <> "" entao
        escreva("Digite o novo nome do cliente: ")
        leia(nome)
        escreva("Digite o novo telefone do cliente: ")
        leia(telefone)
        escreva("Digite o novo email do cliente: ")
        leia(email)
        clientes[indice].nome <- nome
        clientes[indice].telefone <- telefone
        clientes[indice].email <- email
        escreval("Cliente editado com sucesso!")
    senao
        escreval("Cliente não encontrado.")
    fimse
fimalgoritmo

// Função para remover cliente
procedimento RemoverCliente()
var
    indice: inteiro
inicio
    escreva("Digite o índice do cliente que deseja remover: ")
    leia(indice)
    se clientes[indice].nome <> "" entao
        clientes[indice].nome <- ""
        clientes[indice].telefone <- ""
        clientes[indice].email <- ""
        escreval("Cliente removido com sucesso!")
    senao
        escreval("Cliente não encontrado.")
    fimse
fimalgoritmo

// Programa principal
inicio
    para i de 1 ate 100 faca
        clientes[i].nome <- ""
        clientes[i].telefone <- ""
        clientes[i].email <- ""
    fimpara
    repita
        escreval("Menu:")
        escreval("1. Adicionar Cliente")
        escreval("2. Listar Clientes")
        escreval("3. Editar Cliente")
        escreval("4. Remover Cliente")
        escreval("5. Sair")
        escreva("Escolha uma opção: ")
        leia(opcao)
        escolha opcao
            caso 1
                AdicionarCliente()
            caso 2
                ListarClientes()
            caso 3
                EditarCliente()
            caso 4
                RemoverCliente()
            caso 5
                escreval("Saindo do programa...")
            outrocaso
                escreval("Opção inválida.")
        fimescolha
    ate opcao = 5
fimalgoritmo
