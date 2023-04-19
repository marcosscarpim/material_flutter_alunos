/*
Por que não podemos misturar parametros nomeados 
e parametros de posição?
*/

void fn({String a = "", String b = ""}, [String c = "", String d = ""]) {

}

/*
Resposta:
Ambiguidade. A dor do mundo.
Existem algumas issues abertas sobre isso:
https://github.com/dart-lang/language/issues/1076
https://github.com/dart-lang/sdk/issues/6496
Em resumo, no começo talvez pela dificuldade de implementação e pouco uso.
Agora porque ninguém se importa muito.
*/