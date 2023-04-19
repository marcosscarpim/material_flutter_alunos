/*
Nossa classe ainda não é capaz de receber
parametros via construtor, sendo necessário
a reatribuição dos valores via propriedade
*/

class Carro {
  String modelo = "";
  int rodas = 0;

  Carro(String modelo, int rodas) {
    this.modelo = modelo;
    this.rodas = rodas;
  }

  @override
  String toString() => "Carro {modelo: $modelo, rodas: $rodas}";
}

void main() {
  Carro carro = new Carro("Fusca", 4);
  print(carro);
}

//Mas isso não basta
