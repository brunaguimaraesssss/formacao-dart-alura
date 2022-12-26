void main(List<String> arguments) {
  int idade = 29;
  print(idade);

  double altura = 1.59;
  print(altura);

  bool compare = (idade == altura);
  print(compare);

  const String nome = "Bruna";
  String sobrenome = "Guimarães";
  print('Eu sou: \n'
      '$nome $sobrenome');

  List<String> listaNomes = ['Bruna', 'Vinicius', 'André', 'Guilherme', 'Luiz'];
  print(listaNomes);
  print(listaNomes[0]);
  print(listaNomes.length);

  List<dynamic> bruna = [idade, altura, 'Bruna Guimarães'];
  String frase = 'Eu sou ${bruna[2]} e tenho ${bruna[0]} anos';
  print(frase);
}
