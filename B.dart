abstract class Role {
  void displayRole();
}

class Student extends Role {
  @override
  void displayRole() => print("I am a Student.");
}

class Teacher extends Role {
  @override
  void displayRole() => print("I am a Teacher.");
}


class Person {
  String name;
  int age;
  String address;
  Role role;

  Person(this.name, this.age, this.address, this.role);

  void displayInfo() {
    print("$name, Age: $age, Address: $address");
    role.displayRole();
  }
}

void main() {
  Person student = Person("Alice", 20, "123 Main St", Student());
  Person teacher = Person("Bob", 35, "456 Elm St", Teacher());

  student.displayInfo();
  teacher.displayInfo();
}