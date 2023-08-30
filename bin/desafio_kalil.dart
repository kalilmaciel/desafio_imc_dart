import 'package:desafio_kalil/classes/pessoa.dart';
import 'package:desafio_kalil/desafio_kalil.dart';
import 'package:desafio_kalil/utils/console_utils.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();
  pessoa.setNome(ConsoleUtils.itemFormString('Entre com seu nome: '));
  pessoa.setAltura(ConsoleUtils.itemFormDouble('Entre com sua altura (cm): '));
  pessoa.setPeso(ConsoleUtils.itemFormDouble('Entre com seu peso (Kg): '));
  double imc = calcularIMC(pessoa);
  print("Seu IMC é: $imc");
  String classificacao = classificacaoIMC(imc);
  print("Sua classificação de IMC é: $classificacao");
}
