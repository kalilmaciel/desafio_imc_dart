import 'dart:math';

import 'package:desafio_kalil/classes/pessoa.dart';

double calcularIMC(Pessoa pessoa) {
  try {
    if (pessoa.getPeso() <= 0.0) {
      throw ArgumentError.notNull('Peso não pode ser zero.');
    }
    if (pessoa.getAltura() <= 0.0) {
      throw ArgumentError.notNull('Altura não pode ser zero.');
    }
    if (pessoa.getNome().trim() == '') {
      throw ArgumentError.notNull('Nome não pode ser vazio.');
    }
    return pessoa.getPeso() / pow((pessoa.getAltura() / 100), 2);
  } catch (e) {
    throw ArgumentError.value('Valores inválidos.');
  }
}

String classificacaoIMC(double imc) {
  if (imc < 16) {
    return "Magreza extrema";
  }
  if (imc < 17) {
    return "Magreza Moderada";
  }
  if (imc < 18.5) {
    return "Magreza Leve";
  }
  if (imc < 25) {
    return "Saldável";
  }
  if (imc < 30) {
    return "Sobrepeso";
  }
  if (imc < 35) {
    return "Obesidade Grau 1";
  }
  if (imc < 40) {
    return "Obesidade Grau 2 (severa)";
  }
  return "Obesidade Grau 3 (mórbida)";
}
