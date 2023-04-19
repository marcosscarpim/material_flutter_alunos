/*
Esse código abaixo não é válido
Você pode me explicar por quê?
*/

class Carro {
  String modelo;
  int rodas;

  @override
  String toString() => "Carro {modelo: $modelo, rodas: $rodas}";
}

void main() {
  Carro carro = new Carro();
  carro.modelo = "Fusca";
  carro.rodas = 4;
  print(carro);
}
