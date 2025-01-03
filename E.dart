class Student {
  String name;
  int age;
  String address;
  List<int> scores;

  Student(this.name, this.age, this.address, this.scores);

  void display() {
    print("Role: Student");
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${scores.reduce((a, b) => a + b) / scores.length}");
  }
}

class Teacher {
  String name;
  int age;
  String address;
  List<String> courses;

  Teacher(this.name, this.age, this.address, this.courses);

  void display() {
    print("Role: Teacher");
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught: ${courses.join(', ')}");
  }
}

void main() {
  Student student = Student("John Doe", 20, "123 Main St", [90, 85, 82]);
  student.display();
  print("");

  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", ["Math", "English", "Bangla"]);
  teacher.display();
}
