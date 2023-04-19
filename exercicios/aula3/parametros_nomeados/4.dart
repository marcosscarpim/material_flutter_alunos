/*
Esses parametros envoltos das chaves são chamados
de parametros nomeados, porque ao utilizar você
deve informar o nome.
Podemos misturar os parametros normais e nomeados
*/

void mamaOooh(String who, {String what = "", String because = ""}) {
  print("$who $what");
  print("$who $because");
}

void main() {
  mamaOooh(
    "I",
    what: "dont wanna die",
    because: "sometimes wish I'd never been born at all",
  );
}
