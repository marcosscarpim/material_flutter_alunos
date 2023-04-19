/*
Eu tive que mover a classe "People"
para que o exemplo tivesse sentido.
Por que eu não consigo invocar o construtor "_nobody"?
Você consegue corrigir isso pra mim usando um factory?
*/

import 'People.dart';

void main() {
  People doni = People("Donizete Vida");
  People unknown = People._nobody();
}
