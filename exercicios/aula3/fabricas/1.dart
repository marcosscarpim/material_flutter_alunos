/*
É comum em linguagens como Java possuirmos métodos
estáticos que constroem instancias de classes,
sendo elas singleton ou não.
Em alguns casos elas são necessárias quando o construtor
é privado e deseja se restringir a criação dela.
Como o exemplo abaixo:
*/

class MyClass {
  static MyClass build() {
    return MyClass();
  }
}

void main() {
  MyClass instance = MyClass.build();
  print(instance);
}
