import 'dart:io';

main() {
  print(
      'Olá! Aqui temos uma função que lhe retornará o somatório dos números inteiros positivos divisíveis por 3 e 5 que são menores que o valor escolhido por você!');
  print('-' * 20);

  int divisor1 = 3; //número dado pelo enunciado
  int divisor2 = 5; //número dado pelo enunciado
  int somatorio = 0; //inicialização da variação futuramente utilizada para receber o somatório

  stdout.writeln('Escolha um número inteiro positivo: ');
  int numero = int.parse(stdin.readLineSync()!); //local em que o número digitado pelo usuário é capturado

  for (int i = 0; i < numero; i++) //Inserção de um laço de for para testar a divisibilidade de i por 3 e 5. O valor de i é incrementado até chegar no valor do número escolhido pelo usuário
  { 
    if (i % divisor1 == 0 || i % divisor2 == 0) { //condicional para testar a divisibilidade através da operação de obter o resto das divisões inteiras, caso esse resto seja nulo, significa que o valor de i verificado é divisível ou por 3 ou por 5.
      somatorio += i;
    }
  }
  print('O somatório é $somatorio'); //exibe o resultado para o usuário
}
