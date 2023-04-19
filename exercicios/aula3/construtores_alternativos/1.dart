/*
Caso você ja tenha lido nossa seção de "fabricas",
ou caso vá ler, vai notar certa semelhança.
O dart nos permite criar construtores nomeados.
Diferente das "fábricas", os construtores nomeados
retornam si mesmos.
As fábricas podem retornar outras coisas.
*/

class MyClass {
  //esse é o construtor padrão
  MyClass();

  MyClass.alternative();
}

/*
Construtores alternativos/nomeados podem dar um significado
a mais no seu código
*/

class People {
  final String name;

  People(this.name);

  People.nobody() : this("John Doe");

  @override
  String toString() => "Name: $name";
}

void main() {
  People doni = People("Donizete Vida");
  People unknown = People.nobody();
}
