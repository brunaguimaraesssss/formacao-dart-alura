void main() {
  Legumes mandioca = Legumes("Macaxeira", 1200, "Marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarela", "Doce", 12);
  Nozes macadamia = Nozes("Macadâmia", 2, "Branco amarelado", "Doce", 20, 35);
  Citricas limao = Citricas("Limão", 100, "Verde", "Azedo", 5, 9);

  banana.separarIngredientes();

  macadamia.fazerMassa();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso e é $cor.");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("O $nome está cozinhando.");
    } else {
      print("Nem precisa cozinhar.");
    }
  }

  @override
  void separarIngredientes() {}

  @override
  void fazerMassa() {}

  @override
  void assar() {}
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void fazerSuco() {
    print("Você fez suco de $nome");
  }

  @override
  void separarIngredientes() {
    print("Separar ingrediente.");
  }

  @override
  void fazerMassa() {
    print("Misturar massa.");
  }

  @override
  void assar() {
    print("Assar bolo.");
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome.");
    } else {
      print("Não existe refrigerante de $nome.");
    }
  }
}

class Nozes extends Fruta {
  double oleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.oleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar casca.");
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes() {}

  void fazerMassa() {}

  void assar() {}
}
