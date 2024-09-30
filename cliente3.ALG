A// Declaração do vetor de clientes
const MAX_CLIENTES = 100
var clientes: vetor[1..MAX_CLIENTES] de registro
    nome: caractere
    idade: inteiro
    email: caractere
fimregistro
var totalClientes: inteiro

// Função para adicionar cliente
procedimento adicionarCliente()
var cliente: registro
    nome: caractere
    idade: inteiro
    email: caractere
fimregistro
inicio
    se totalClientes < MAX_CLIENTES entao
        escreva("Digite o nome do cliente: ")
        leia(cliente.nome)
        escreva("Digite a idade do cliente: ")
        leia(cliente.idade)
        escreva("Digite o email do cliente: ")
        leia(cliente.email)
        totalClientes <- totalClientes + 1
        clientes[totalClientes] <- cliente
    senao
        escreva("Não há espaço disponível para adicionar mais clientes.")
    fimse
fimprocedimento

// Função para listar clientes
procedimento listarClientes()
var i: inteiro
inicio
    para i de 1 ate totalClientes faca
        escreva("Cliente ", i, ": ")
        escreva("Nome: ", clientes[i].nome)
        escreva("Idade: ", clientes[i].idade)
        escreva("Email: ", clientes[i].email)
        escreval()
    fimpara
fimprocedimento

// Função para editar cliente
procedimento editarCliente()
var indice: inteiro
inicio
    escreva("Digite o índice do cliente que deseja editar: ")
    leia(indice)
    se indice >= 1 e indice <= totalClientes entao
        escreva("Digite o novo nome do cliente: ")
        leia(clientes[indice].nome)
        escreva("Digite a nova idade do cliente: ")
        leia(clientes[indice].idade)
        escreva("Digite o novo email do cliente: ")
        leia(clientes[indice].email)
    senao
        escreva("Índice inválido.")
    fimse
fimprocedimento

// Função para remover cliente
procedimento removerCliente()
var indice, i: inteiro
inicio
    escreva("Digite o índice do cliente que deseja remover: ")
    leia(indice)
    se indice >= 1 e indice <= totalClientes entao
        para i de indice ate totalClientes - 1 faca
            clientes[i] <- clientes[i + 1]
        fimpara
        totalClientes <- totalClientes - 1
    senao
        escreva("Índice inválido.")
    fimse
fimprocedimento

// Programa principal
inicio
    totalClientes <- 0
    // Aqui você pode chamar as funções conforme necessário, por exemplo:
    // adicionarCliente()
    // listarClientes()
    // editarCliente()
    // removerCliente()
fimalgoritmo
