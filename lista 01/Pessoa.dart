class Pessoa {
  String _nome;
  String? _dataNascimento;
  int? _idade;
  double _altura;

  Pessoa(this._nome, this._altura);

  Pessoa.comData(this._nome, this._dataNascimento , this._altura){
    _idade = _calcularIdade(_dataNascimento!);
  }

  @override
  String toString() {
    return 'Nome: $_nome (Data De Nascimento: $_dataNascimento, Altura: $_altura)';
  }

  int? get idade => _idade;
  String get nome => _nome;
  double get altura => _altura;

   int _calcularIdade(String dataNascimento) {
      List<String> data = dataNascimento!.split('/');
      int dia = int.parse(data[0]);
      int mes = int.parse(data[1]);
      int ano = int.parse(data[2]);

      DateTime dataAtual = DateTime.now();

      int idade = dataAtual.year - ano;
      return idade ;
  }
}
