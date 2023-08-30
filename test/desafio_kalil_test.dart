import 'package:desafio_kalil/classes/pessoa.dart';
import 'package:desafio_kalil/desafio_kalil.dart';
import 'package:test/test.dart';

void main() {
  group("IMC", () {
    var valores = {
      {'nome': 'Kalil', 'peso': 85, 'altura': 180}: 25,
      {'nome': 'Simone', 'peso': 91, 'altura': 170}: 28,
      {'nome': 'Maria', 'peso': 35, 'altura': 130}: 20,
    };

    valores.forEach((valor, esperado) {
      test('IMC', () {
        Pessoa pessoa = Pessoa(
            nome: valor['nome'].toString(),
            peso: double.parse(valor['peso'].toString()),
            altura: double.parse(valor['altura'].toString()));
        expect(calcularIMC(pessoa), greaterThan(esperado));
      });
    });
  });
  group("EXCESSÕES", () {
    var valores = {
      {'nome': 'Kalil', 'peso': 0, 'altura': 180},
      {'nome': 'Simone', 'peso': 91, 'altura': 0},
      {'nome': '', 'peso': 35, 'altura': 130},
    };

    valores.forEach((valor) {
      test('IMC', () {
        Pessoa pessoa = Pessoa(
            nome: valor['nome'].toString(),
            peso: double.parse(valor['peso'].toString()),
            altura: double.parse(valor['altura'].toString()));
        expect(
            () => calcularIMC(pessoa), throwsA(TypeMatcher<ArgumentError>()));
      });
    });
  });
}
