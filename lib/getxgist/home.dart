import 'package:flutter/material.dart';
import 'package:get/get.dart';

//unnamed route
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "This is Home Screen",
//               style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             ElevatedButton(
//               child: Text(
//                 "Next Screen",
//                 style: TextStyle(fontSize: 18),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             ElevatedButton(
//               child: Text(
//                 "Back to Main",
//                 style: TextStyle(fontSize: 18),
//               ),
//               onPressed: () {
//                 // Get.back();
//                 // Send data to previous screen must use result as name
//                 Get.back(result: 'This is from Home Screen');
//               },
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             // Text(
//             //   "${Get.arguments}",
//             //   style: TextStyle(color: Colors.green, fontSize: 20),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Get.toNamed("/nextScreen");

                //Get.toNamed("/nextScreen/1234");
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
