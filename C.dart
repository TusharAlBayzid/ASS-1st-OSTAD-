class Student extends Person {
  int studentID;
  String grade;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    int totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}