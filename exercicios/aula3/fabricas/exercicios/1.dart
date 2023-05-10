/*
Essa classe não compila.
Por que?
https://dart.dev/language/constructors#factory-constructors
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
