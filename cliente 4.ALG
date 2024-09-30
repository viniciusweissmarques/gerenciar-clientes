var
   nota1, nota2, nota3, media: real

inicio
   // Entrada de dados
   escreva("Digite a primeira nota: ")
   leia(nota1)
   escreva("Digite a segunda nota: ")
   leia(nota2)
   escreva("Digite a terceira nota: ")
   leia(nota3)

   // Processamento
   media := (nota1 + nota2 + nota3) / 3

   // Saída de dados
   escreva("A média das notas é: ", media:4:2)
fimalgoritmo
