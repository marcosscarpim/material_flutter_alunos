/*
O Dart não possúi a palavra reservada "interface".
Em algumas linguagens, como swift, isso é conhecido como
"protocol", enquanto Rust é conhecido como "trait".
Mas temos classes abstratas, que resolvem nossas necessidades.
*/

abstract class Runner {
  void run();
}

class Human implements Runner {
  @override
  void run() {
    print("A human is running");
  }
}

class Robot implements Runner {
  @override
  void run() {
    print("A robot is running");
  }
}

void run(Runner runner) {
  runner.run();
}

void main() {
  final robot = Robot();
  final human = Human();

  run(robot);
  run(human);
}
