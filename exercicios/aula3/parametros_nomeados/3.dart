/*
Esses parametros envoltos das chaves, são chamados
de parametros nomeados, porque ao utilizar, você
deve informar o nome
Podemos misturar os parametros normais e nomeados
*/

void mamaOooh(String who, {String what = ""}) {
  print("$who $what");
}

void main() {
  mamaOooh("I", what: "didn't mean to make you cry");
}
