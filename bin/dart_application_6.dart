void main() {
  escolherTransporteEnum(Transporte.skate);
}

void escolherTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Carro");
      break;
    case Transporte.bike:
      print("Bike");
      break;
    case Transporte.aviao:
      print("Aviao");
      break;
    default:
      print("Não encontrado");
  }
}

enum Transporte { carro, bike, aviao, skate, trem, onibus }
