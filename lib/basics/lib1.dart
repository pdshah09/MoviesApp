class Element1 {
  @override
  String toString() {
    // TODO: implement toString
    print("Hello Element1 here !");
    return super.toString();
  }
}

class Simplee {
  final String name;
  int? id;
  Simplee({required this.name, this.id});
  void setId(int id) {
    this.id = id;
  }

  void printName() {
    if (id != null) {
      print("Name is $name with id : $id");
    } else {
      print("Name is $name");
    }
  }
}

class NotSoSimple extends Simplee {
  final String description;
  static const int age = 10;

  NotSoSimple({required String name, required this.description})
    : super(name: name);

  static void printAge() => print('Age is $age');

  void printDescription() {
    print('Description is $description');
  }

  @override
  void printName() {
    print("Name is $name with description $description");
  }
}
