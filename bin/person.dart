class Person {
  String studentName;
  int studentAge;
  Person({required this.studentName, required this.studentAge});
  displayInfo() {
    print('My Name is $studentName and My Age is $studentAge');
  }
}

class Student extends Person {
  List<int> grads;
  Student(
      {required super.studentName,
        required super.studentAge,
        required this.grads});
  @override
  displayInfo() {
    // TODO: implement displayInfo
    super.displayInfo();
    print('And My Grads: $grads');
  }
}