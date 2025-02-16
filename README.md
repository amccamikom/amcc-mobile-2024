# Object-Oriented Programming (OOP) in Flutter (Dart)

## Table of Contents
1. Function
2. Class
3. Object
4. Properties
5. Method
6. Constructors
7. Inheritance
8. Encapsulation
9. Abstraction
10. Polymorphism

---

## 1. Function
**Definition:** A function is a block of reusable code that performs a specific task.

**Example:** Function to calculate the area of a rectangle.

```dart
// Function to calculate the area of a rectangle
double calculateArea(double length, double width) {
  return length * width;
}

void main() {
  double result = calculateArea(5, 3);
  print("Area: $result"); // Output: Area: 15
}
```

---

## 2. Class
**Definition:** A class is a blueprint or template for creating objects.

**Example:** Class `Car` with properties `brand` and `maxSpeed`.

```dart
class Car {
  String brand = "";
  int maxSpeed = 0;
}

void main() {
  Car car1 = Car();
  car1.brand = "Toyota";
  car1.maxSpeed = 180;

  print("Car: ${car1.brand}, Max Speed: ${car1.maxSpeed} km/h");
}
```

---

## 3. Object
**Definition:** An object is an instance of a class.

**Example:** Creating multiple `Student` objects.

```dart
class Student {
  String name = "";
  int age = 0;
}

void main() {
  Student student1 = Student();
  student1.name = "Alice";
  student1.age = 20;

  Student student2 = Student();
  student2.name = "Bob";
  student2.age = 22;

  print("${student1.name}, Age: ${student1.age}");
  print("${student2.name}, Age: ${student2.age}");
}
```

---

## 4. Properties
**Definition:** Properties are attributes that belong to a class.

**Example:** Adding properties `name` and `age` to the `Person` class.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  Person person1 = Person("Diana", 25);
  print("Name: ${person1.name}, Age: ${person1.age}");
}
```

---

## 5. Method
**Definition:** A method is a function that belongs to a class.

**Example:** `Animal` class with `makeSound()` method.

```dart
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("$name is making a sound...");
  }
}

void main() {
  Animal cat = Animal("Cat");
  cat.makeSound(); // Output: Cat is making a sound...
}
```

---

## 6. Constructors
**Definition:** A constructor is a special method that is called when an object is created.

**Example:** `Laptop` class with named constructors.

```dart
class Laptop {
  String brand;
  int ram;

  // Default constructor
  Laptop(this.brand, this.ram);

  // Named constructor with default RAM
  Laptop.withDefaultRam(this.brand) : ram = 8;

  // Named constructor with no specifications
  Laptop.noSpecs() : brand = "Unknown", ram = 4;

  void displayInfo() {
    print("Laptop $brand with $ram GB RAM");
  }
}

void main() {
  Laptop laptop1 = Laptop("Asus", 16);
  Laptop laptop2 = Laptop.withDefaultRam("HP");
  Laptop laptop3 = Laptop.noSpecs();

  laptop1.displayInfo(); // Output: Laptop Asus with 16 GB RAM
  laptop2.displayInfo(); // Output: Laptop HP with 8 GB RAM
  laptop3.displayInfo(); // Output: Laptop Unknown with 4 GB RAM
}
```

---

## 7. Inheritance
**Definition:** Inheritance allows a child class to inherit properties and methods from a parent class.

**Example:** `Vehicle` class inherited by `Motorcycle` class.

```dart
class Vehicle {
  String brand;

  Vehicle(this.brand);

  void move() {
    print("$brand is moving...");
  }
}

class Motorcycle extends Vehicle {
  int cc;

  Motorcycle(String brand, this.cc) : super(brand);

  void showInfo() {
    print("Motorcycle $brand with $cc cc engine.");
  }
}

void main() {
  Motorcycle moto1 = Motorcycle("Yamaha", 150);
  moto1.move();
  moto1.showInfo();
}
```

---

## 8. Encapsulation
**Definition:** Encapsulation hides the internal details of a class and restricts direct access to some components.

**Example:** Using `_` to create private properties.

```dart
class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    _balance += amount;
    print("Balance updated: $_balance");
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000);
  print("Current balance: ${account.getBalance()}");
}
```

---

## 9. Abstraction
**Definition:** Abstraction hides implementation details and only shows necessary features.

**Example:** Using an abstract class `Animal`.

```dart
abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound(); // Abstract method
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name: Meow!");
  }
}

void main() {
  Cat cat1 = Cat("Kitty");
  cat1.makeSound(); // Output: Kitty: Meow!
}
```

---

## 10. Polymorphism
**Definition:** Polymorphism allows a method to take multiple forms.

**Example:** `Bird` and `Chicken` classes override `makeSound()` method.

```dart
class Animal {
  void makeSound() {
    print("Animal is making a sound...");
  }
}

class Bird extends Animal {
  @override
  void makeSound() {
    print("Bird is chirping...");
  }
}

class Chicken extends Animal {
  @override
  void makeSound() {
    print("Chicken is clucking...");
  }
}

void main() {
  Animal bird = Bird();
  Animal chicken = Chicken();

  bird.makeSound(); // Output: Bird is chirping...
  chicken.makeSound(); // Output: Chicken is clucking...
}
```

---

## Conclusion
These ten OOP concepts help structure Flutter applications effectively, making the code more readable, reusable, and scalable.
