// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:namer_app/pages/login_page.dart';
// import 'package:namer_app/utils/routes.dart';
// import 'package:namer_app/widgets/themes.dart';
// import 'pages/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.light,
//       theme: MyTheme.lightTheme(context),
//       darkTheme: MyTheme.darkTheme(context),
//       debugShowCheckedModeBanner: false,
//       initialRoute: MyRoutes.homeRoute,
//       routes: {
//         "/": (context) => LoginPage(),
//         MyRoutes.loginRoute: (context) => LoginPage(),
//         MyRoutes.homeRoute: (context) => Snackbar()
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namer_app/getxgist/my_controller.dart';
import 'package:namer_app/getxgist/student_obs.dart';

// import 'package:namer_app/getxgist/nextScreen.dart';
// import 'getxgist/home.dart';
// import 'lottie/test_lottie_file.dart';

void main() {
  runApp(MyApp());
}

//unnamed routes
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "Navigation",
//       home: Scaffold(
//         appBar: AppBar(title: Text("Navigation")),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child: Text("Go to Home"),
//               onPressed: () async {
//                 // Get.to(
//                 //   Home(),
//                 // To make the screen full dialog
//                 // fullscreenDialog: true,
//                 // To provide animations
//                 //transition: Transition.zoom,
//                 // Duration for transition animation
//                 // duration: Duration(milliseconds: 4000),
//                 // Curve Animation
//                 // curve: Curves.bounceInOut,
//                 // );
//                 // Go to home screen but no option to return to previous screen
//                 // Get.off(Home());
//                 // Go to home screen and cancel all previous screens/routes
//                 //Get.offAll(Home());
//                 // Go the next screen with some data
//                 // Get.to(Home(), arguments: "Data from Main");
//                 // Go to next screen and receive data sent from home screen
//                 var data = await Get.to(Home());
//                 print("The Received data is $data");
//               },
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }

//named route
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "Navigation",
//       initialRoute: "/",
//       defaultTransition: Transition.zoom,
//       getPages: [
//         GetPage(name: '/', page: () => MyApp()),
//         GetPage(name: '/home', page: () => Home()),
//         GetPage(
//             name: '/nextScreen',
//             page: () => NextScreen(),
//             // To control the transition route wise
//             // If specified will override the default transition
//             transition: Transition.leftToRight),
//         // GetPage(
//         //     name: '/nextScreen/:someValue',
//         //     page: () => NextScreen(),
//         //     // To control the transition route wise
//         //     // If specified will override the default transition
//         //     transition: Transition.leftToRight)
//       ],
//       //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
//       home: Scaffold(
//         appBar: AppBar(title: Text("Bottom Sheet")),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child: Text("Go to Home"),
//               onPressed: () {
//                 Get.toNamed(
//                   "/home",
//                 );
//                 // Go to home screen but no option to return to previous screen
//                 // Get.offNamed("/home");
//                 // Go to home screen and cancel all previous screens/routes
//                 //Get.offAllNamed("/home");
//                 // Dynamic URL link
//                 Get.toNamed(
//                   "/home?channel=Ripples Code&content=Flutter GetX",
//                 );
//               },
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   var count = 0.obs;

//   void increment() {
//     count++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "State Management",
//       home: Scaffold(
//         appBar: AppBar(title: Text("State Management")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Obx(() => Text(
//                     "Count value is $count",
//                     style: TextStyle(fontSize: 25),
//                   )),
//               SizedBox(
//                 height: 16,
//               ),
//               ElevatedButton(
//                 child: Text("Increment"),
//                 onPressed: () {
//                   increment();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   MyController myController = Get.put(MyController());

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "State Management",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("State Management"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(
//                 () => Text("Count value is ${myController.student.value.name}",
//                     style: TextStyle(fontSize: 25)),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               ElevatedButton(
//                 child: Text("Uppercase"),
//                 onPressed: () {
//                   myController.convertUpperCase();
//                 },
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               ElevatedButton(
//                   child: Text("Lowercase"),
//                   onPressed: () {
//                     myController.convertLowerCase();
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<MyController>(
                // init: MyController(),
                builder: ((controller) {
                  return Text(
                    "The value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.increment();
                  // Get.find<MyController>().increment();
                },
                child: Text("Increment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
