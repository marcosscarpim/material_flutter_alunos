/*
Mas isso não impede o programador de criar 
uma instancia daquela classe.
E não é isso que queremos.
*/

class MyClass {
  static MyClass build() {
    return MyClass();
  }
}

void main() {
  MyClass instance = MyClass();
  print(instance);
}
