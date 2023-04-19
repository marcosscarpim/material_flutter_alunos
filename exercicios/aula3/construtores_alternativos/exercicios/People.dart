class People {
  final String name;

  People(this.name);

  People._nobody() : this("John Doe");

  @override
  String toString() => "Name: $name";
}
