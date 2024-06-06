// Define classes and interfaces
abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Class that overrides an inherited method
class LoudDog extends Dog {
  @override
  void makeSound() {
    print("LOUD Woof!");
  }
}

// Class that initializes data from a file
class FileReader {
  static List<String> readLinesFromFile(String filename) {
    // Implementation to read lines from file
    return ["Data line 1", "Data line 2", "Data line 3"];
  }
}

void main() {
  // Initialize instance with data from a file
  List<String> lines = FileReader.readLinesFromFile("data.txt");
  for (var line in lines) {
    print(line);
  }

  // Demonstrate the use of a loop
  List<Animal> animals = [Dog(), Cat(), LoudDog()];
  for (var animal in animals) {
    animal.makeSound();
  }
}
