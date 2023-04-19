/*
Podemos também, além dos parametros nomeados,
declarar parametros de posição.
Como pode ser visto, eles são encaixados por sua posição,
não mais pelo seu nome.
*/

void so(String what, [String because = "", String and = ""]) {
  print("$what $because");
}

void main() {
  so("Don't stop me now");
  so("Don't stop me now", "I'm having a good time");
  so("Don't stop me now", "'Cause having a good time");
}
