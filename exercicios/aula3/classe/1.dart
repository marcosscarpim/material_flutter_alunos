/*
Sendo o dart uma linguagem moderna,
sua maneira de criar classes também é

Podemos simplesmente criar uma classe
usando a palavra reservada class
*/

class Carro {
  String modelo = "";
  int rodas = 0;

  @override
  String toString() => "Carro {modelo: $modelo, rodas: $rodas}";
}

void main() {
  Carro carro = new Carro();
  carro.modelo = "Fusca";
  carro.rodas = 4;
  print(carro);
}

//Mas isso não basta
