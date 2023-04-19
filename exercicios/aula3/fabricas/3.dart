/*
Mas isso não impede o programador de criar 
uma instancia daquela classe.
E não é isso que queremos.
*/

class MyClass {
  MyClass._();

  factory MyClass.build() {
    return MyClass._();
  }
}

void main() {
  // MyClass instance = MyClass();
  MyClass instance = MyClass.build();
  //conseguimos restringir o uso do construtor privado
  //através de factories
  // Um factory pode ser entendido como um método estático
  // que tem acesso aos construtores privados de uma determinada
  // classe.

  print(instance);
}
