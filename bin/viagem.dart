import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DDSV23";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQuantidade) {
    if (novaQuantidade < 10) {
      _totalLocaisVisitados = novaQuantidade;
    } else {
      print("Não foi possível alterar.");
    }
  }
}
