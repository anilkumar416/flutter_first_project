import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text(
                "Open Dialog",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: TextStyle(fontSize: 25),
                  middleText: "This is middle text",
                  middleTextStyle: TextStyle(fontSize: 20),
                  // backgroundColor: Colors.purple,
                  // radius: 80,

                  // To customize the middle text
                  // content: Row(
                  //   children: [
                  //     CircularProgressIndicator(),
                  //     SizedBox(
                  //       width: 16,
                  //     ),
                  //     Expanded(
                  //       child: Text("Data Loading"),
                  //     ),
                  //   ],
                  // ),

                  // Default cancel and confirm action
                  // textCancel: "Cancel",
                  // cancelTextColor: Colors.white,
                  // textConfirm: "Confirm",
                  // confirmTextColor: Colors.white,
                  // onCancel: () {},
                  // onConfirm: () {
                  //   Get.back();
                  //   Get.snackbar(
                  //     "onConfirm Clicked",
                  //     "onConfirm button clicked",
                  //     snackPosition: SnackPosition.BOTTOM,
                  //   );
                  // },
                  // // color for default cancel and confirm button
                  // buttonColor: Colors.green,

                  // Customize the default cancel and confirm
                  // Override the default cancel and confirm
                  cancel: Text(
                    "Cancels",
                    style: TextStyle(color: Colors.white),
                  ),
                  confirm: Text(
                    "Confirms",
                    style: TextStyle(color: Colors.white),
                  ),

                  actions: [
                    ElevatedButton(
                      child: Text("Action-1"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    ElevatedButton(
                      child: Text("Action-2"),
                      onPressed: () {},
                    )
                  ],
                  barrierDismissible: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
