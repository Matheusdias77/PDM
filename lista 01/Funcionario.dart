import 'Pessoa.dart';

class Funcionario extends Pessoa {
  double _salario;

  Funcionario(nome, double altura, this._salario) 
      : super(nome, altura);

  @override
  String toString() {
    return '${super.toString()} Salário: $_salario';
  }
}
