/*
Mas as vezes queremos colocar esses
parametros com valores padrão
*/

void dancingInThe({String where = "dark"}) {
  print("When I'm around slow dancing in the $where");
}

void main() {
  dancingInThe();
  dancingInThe(where: "darrrrrrrrrrkkkk");
}
