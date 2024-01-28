//iniciar o programa
//pegar o peso e dividir pela (altura * altura).
//pegar o valor recebido e comparar com a tabela de IMC.

import 'dart:io';

void main() {
  print("Bem vindo ao calcula IMC");
  var texto = ("Digite Sua Altura em metros, (UTILIZE O PONTO .) ");
  stdout.write(texto);
  String? input = stdin.readLineSync();
  if (input != null) {
    double altura = double.parse(input);
    print("Qual seu Peso?");
    input = stdin.readLineSync();
    if (input != null) {
      var peso = double.parse(input);
      var total = (peso / (altura * altura));
      print("seu IMC ATUAL É:");
      print(total.toStringAsFixed(2));
      switch (total) {
        case <= 18.5:
          print("vc estar Abaixo do normal");
          break;
        case ((>= 18.6) && (< 24.9)):
          print("vc estar normal");
          break;
        case ((>= 25) && (< 29.9)):
          print("vc estar com sobrepeso");
          break;
        case ((>= 30) && (< 34.9)):
          print("vc estar com obesidade grau 1");
          break;
        case ((>= 35) && (< 39.9)):
          print("vc estar com obesidade grau 2");
          break;
        case >= 40:
          print("vc estar obesidade grau 3");
          break;
      }
    }
  }
}
