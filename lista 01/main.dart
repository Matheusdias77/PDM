import 'Agenda.dart';
import 'Funcionario.dart';
import 'Pessoa.dart';

void main() {

  Agenda agenda = Agenda();
  var pessoa = Pessoa.comData('Nome', '10/10/2002' , 1.80);

  print(pessoa);
  print('Idade: ${pessoa.idade}');

  agenda.armazenaPessoa(Pessoa('João', 1.80));
  agenda.armazenaPessoa(Pessoa('Maria', 1.65));

  agenda.printAgenda();

  agenda.removePessoa('João');
  agenda.printAgenda();

  var funcionario = Funcionario('nome', 1.70, 200.0);
  print(funcionario);
}