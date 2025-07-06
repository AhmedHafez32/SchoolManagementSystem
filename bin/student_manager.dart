import 'dart:io';

import 'person.dart';

class StudentManager {
  showMenu() {
    print(
        '1 - Add Student\n2 - View Student\n3 - Update Student by Index\n4 - Exit');
  }

  List<Student> studentsGroup = [];
  addStudent(){
    print('Enter Student Name :');
    String userEnterStudentName = stdin.readLineSync()!;
    print('Enter Student Age :');
    int userEnterStudentAge = int.parse(stdin.readLineSync()!);
    print('Enter Student Grads like 1,5,9,8.... :');
    List<int> userEnterStudentGrads = stdin
        .readLineSync()!
        .split(',')
        .map((element) => int.parse(element.trim()))
        .toList();
    studentsGroup.add(Student(
        studentName: userEnterStudentName,
        studentAge: userEnterStudentAge,
        grads: userEnterStudentGrads));
    print('Student Added Successfully!');
  }

  displayStudentsInfo() {
    if (studentsGroup.isEmpty) {
      print('Error, No Student Added yet!!');
      return;
    } else {
      studentsGroup.forEach((student) {
        student.displayInfo();
        print('======================');
      });
    }
  }

  updateStudent() {
    print('Enter Student Index :');
    int userEnterStudentIndex = int.parse(stdin.readLineSync()!);
    if (userEnterStudentIndex >= studentsGroup.length) {
      print('Error, No index like this $userEnterStudentIndex');
      return;
    } else {
      print('Enter Student Name :');
      String userEnterStudentName = stdin.readLineSync()!;
      print('Enter Student Age :');
      int userEnterStudentAge = int.parse(stdin.readLineSync()!);
      print('Enter Student Grads like 1,5,9,8.... :');
      List<int> userEnterStudentGrads = stdin
          .readLineSync()!
          .split(',')
          .map((element) => int.parse(element.trim()))
          .toList();
      studentsGroup[userEnterStudentIndex] = Student(
          studentName: userEnterStudentName,
          studentAge: userEnterStudentAge,
          grads: userEnterStudentGrads);
      print('Student Updates Successfully!');
    }
  }
}
