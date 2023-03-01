import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("Bottom Sheet"),
            onPressed: () {
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Light Theme'),
                          onTap: () => {Get.changeTheme(ThemeData.light())}),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Dark Theme'),
                        onTap: () => {Get.changeTheme(ThemeData.dark())},
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.purpleAccent,
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0),
                ),
                barrierColor: Colors.greenAccent.shade100,
                elevation: 10,
                enableDrag: true,
              );
            },
          ),
        ],
      )),
    );
  }
}
