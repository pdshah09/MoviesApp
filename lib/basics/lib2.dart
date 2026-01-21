class Element {
  @override
  String toString() {
    // TODO: implement toString
    print("Hello Element2 here !");
    return super.toString();
  }
}

mixin Animal {
  void run() {
    print('Running');
  }
}

class Dog with Animal {
  void bark() => print("Barking !");
}
