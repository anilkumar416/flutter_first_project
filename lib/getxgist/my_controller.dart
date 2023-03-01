import 'package:get/get.dart';
import 'package:namer_app/getxgist/student_obs.dart';

class MyController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  // void convertToLowerCase() {
  //   student.name.value = student.name.value.toLowerCase();
  // }

  // var student = Student(name: "Tom", age: 25).obs;

  // void convertUpperCase() {
  //   student.update((student) {
  //     student?.name = student.name.toString().toUpperCase();
  //   });
  // }

  // void convertLowerCase() {
  //   student.update((student) {
  //     student?.name = student.name.toString().toLowerCase();
  //   });
  // }

  var count = 0.obs;
  void increment() {
    count++;
  }
}
