import 'Pessoa.dart';

class Agenda {

int quant = 10 ;
List<Pessoa> pessoas = [];

void armazenaPessoa(Pessoa p){
 if (pessoas.length < quant) {
    pessoas.add(p);
    print('Pessoa adicionada: ${p.toString()}');
  } else {
    print("Lista Cheia !!");
  }
}

void removePessoa(String nome) {
    for (int i = 0; i < pessoas.length; i++) {
      if (pessoas[i].nome == nome) {
        pessoas.removeAt(i);
        print('Pessoa removida: $nome');
        return;
      }
    }
    print('Pessoa não encontrada: $nome');
  }

Pessoa? buscaPessoa(String nome) {
  for (int i = 0; i < pessoas.length; i++) {
    if (pessoas[i].nome == nome) {
      print('Encontrado: $nome'); 
      return pessoas[i]; 
    }
  }
  print('Pessoa não encontrada !!'); 
  return null; 
}

void printAgenda(){
  for (int i = 0 ; i < pessoas.length ; i++){
    print(pessoas[i].nome);
  }
}

void printPessoa(int index) {
  if (index >= 0 && index < pessoas.length) {
    print(pessoas[index].toString());
  } else {
    print('Índice inválido: $index');
  }
}
}