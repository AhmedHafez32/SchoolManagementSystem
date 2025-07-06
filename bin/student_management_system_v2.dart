import 'dart:io';
import 'student_manager.dart';

void main() {
  StudentManager std = StudentManager();
  int counter = 0;
  while (true) {
    std.showMenu();
    String? userSelected = stdin.readLineSync();
    if (userSelected == null || userSelected.isEmpty) {
      counter++;
      print('Error!,Try Again!!');
    } else if (!['1', '2', '3', '4'].contains(userSelected)) {
      counter++;
      print('Error!,Try Again!!');
    } else {
      if (userSelected == '1') {
        std.addStudent();
      } else if (userSelected == '2') {
        print('======================');
        std.displayStudentsInfo();
      } else if (userSelected == '3') {
        std.updateStudent();
      } else if (userSelected == '4') {
        print("Exit!");
        return;
      } else {
        print('Error!');
        return;
      }
    }
    if(counter>=3){
      print('Error!, You have exhausted all attempts');
      return;
    }
  }
}
