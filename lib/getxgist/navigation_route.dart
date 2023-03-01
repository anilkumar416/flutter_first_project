import 'package:flutter/material.dart';

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a navigation widget",style: TextStyle(color: Colors.purpleAccent,fontSize: 30),),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}