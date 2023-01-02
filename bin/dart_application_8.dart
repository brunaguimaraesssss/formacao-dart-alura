void main() {
  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["São Paulo"] = 1900;
  registrarPrecos["Rio de Janeiro"] = 1500;
  registrarPrecos["Tocantins"] = 1000;
  registrarPrecos.remove("Tocantins");
  registrarPrecos["Nova York"] = "Muito caro";

  print(registrarPrecos);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}
