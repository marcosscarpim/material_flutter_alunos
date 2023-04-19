/*
Essa classe não compila.
Por que?
*/

class MyClass {
  factory MyClass.fabrica() {
    return MyClass();
  }
}

/*
Resposta:
Uma fábrica remove o construtor padrão.
Para corrigir, é necessário explicitamente adicionar
o construtor default.
class MyClass {
  MyClass();
  factory MyClass.fabrica() {
    return MyClass();
  }
}
*/
