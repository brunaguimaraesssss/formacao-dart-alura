void main() {
  dynamic meuNumero = 7.1;
  print(meuNumero.runtimeType);
  meuNumero = "String qualquer";
  print(meuNumero.runtimeType);

  Viagem viagemHoje = Viagem();
  print(viagemHoje.dinheiro);
  print(Viagem.codigoTrabalho);
}

class Viagem {
  static String codigoTrabalho = "DDSV23";
  double dinheiro = 0;
}
