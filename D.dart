class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print("Role: Person");
  }
}

class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, this.teacherID, this.coursesTaught) : super(name, age);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught: ${coursesTaught.join(', ')}");
  }
}

void main() {
  var teacher = Teacher("John", 40, 101, ["Math", "Science", "History"]);
  teacher.displayRole();
  teacher.displayCoursesTaught();
}
