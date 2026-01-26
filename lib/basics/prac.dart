import 'package:movieapp/basics/lib1.dart';
import 'package:movieapp/basics/lib2.dart' as lib2;

enum FileType { any, media, image, video, audio, custom }

final currentFileType = FileType.any;

extension NunberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

class MovieResponse {
  String name;
  MovieResponse({required this.name});
}

class _movieRepository {
  MovieResponse getTrendingMovies() {
    return MovieResponse(name: "Hello");
  }
}

Future<MovieResponse?> getTrendingMovies() async {
  final repository = _movieRepository();
  return repository.getTrendingMovies();
}

enum ChooseEnum {
  Simple(name: 's'),
  Simplee(name: 'g'),
  NotSoSimple(name: 'd');

  final String name;
  const ChooseEnum({required this.name});
}

class Simple {
  String? name;
  int age = 1;
}

void printNameLength(Simple simple) {
  print(simple.name?.length);
}

void main() async {
  final response = await getTrendingMovies();
  Simple simple = Simple();

  printNameLength(simple);
  print(simple.name ?? 'No name');

  var type = 'File';

  switch (type) {
    case 'File':
      print("The type is a File !");
    case 'Directory':
      print("The type is a Directory !");
    default:
      print('Default');
  }

  final result = switch (type) {
    'File' => 'Hi',
    'dir' => 'Hello',
    _ => 'Default',
  };

  print(result);

  if (!true) {
    print("Hello");
  } else if (!true) {
    print("Hello1");
  } else {
    print("Bye !");
  }

  for (var counter = 0; counter < 5; counter++) {
    print('Counter ${counter}');
  }

  List<String> fruits = ['apple', 'bannana', 'orange'];

  final upperCaseList = fruits.map((item) {
    return item.toUpperCase();
  });

  print(upperCaseList);
  print(fruits);

  Element1 e1 = Element1();
  lib2.Element e2 = lib2.Element();
  print('$e1 \n $e2');

  final simplee1 = Simplee(name: 'Simple');
  final simplee2 = Simplee(name: 'Simple', id: 12);
  final notSoSimple = NotSoSimple(name: 'J', description: 'a');

  notSoSimple.printName();
  notSoSimple.printDescription();

  print('92'.parseInt());
  print('92'.parseInt().runtimeType);
}
