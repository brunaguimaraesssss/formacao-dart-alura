void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);

  print(isMadura);

  // Posicionais obrigatórios
  mostrarMadura("Uva", 40);

  // Nomeados opcionais
  mostrarMaduraECor("Uva", 40, cor: "roxa");

  // Parâmetros com "padrão"
  mostrarMaduraECorPadrao("Uva", 40);
  mostrarMaduraECorPadrao("Uva", 40, cor: "roxa");

  // Modificador "required"
  mostrarMaduraECorRequired("Uva", 40, cor: "roxa");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
}

mostrarMaduraECor(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

mostrarMaduraECorPadrao(String nome, int dias, {String cor = "sem cor"}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

mostrarMaduraECorRequired(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}
