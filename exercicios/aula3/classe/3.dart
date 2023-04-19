/*
Mas isso não basta, podemos fazer melhor
Podemos encurtar nosso construtor.
*/

class Carro {
  String modelo = "";
  int rodas = 0;

  Carro(this.modelo, this.rodas);

  @override
  String toString() => "Carro {modelo: $modelo, rodas: $rodas}";
}

void main() {
  Carro carro = new Carro("Fusca", 4);
  print(carro);
}
