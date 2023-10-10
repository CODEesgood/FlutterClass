import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aug_5/login.dart';
import 'package:flutter_aug_5/layout_test_1.dart';
import 'package:flutter_aug_5/layour_test_2.dart';
import 'package:flutter_aug_5/newlogin.dart';
import 'package:flutter_aug_5/initialization.dart';
import 'package:flutter_aug_5/registration.dart';
import 'package:flutter_aug_5/cupertino.dart';
import 'package:flutter_aug_5/watermain.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC0VMtoInC4iJBhg3-2184j02ddcPw7-7k",
          appId: "1:541238686389:web:c0af102a35668a062f04fc",
          messagingSenderId: "541238686389",
          projectId: "flutterclass-cbea1"));

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => Initialization(),
        '/login': (context) => LoginPage(),
        '/registration': (context) => Registration(),
        '/home': (context) => MyHomePage(title: "title"),
        '/watermain': (context) => Watermain(),
      },
      // home: Initialization(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Text("Home"), title: Text("Gary's APP!")),
        body: Column(
          children: [
            Row(
              children: [
                // Container(
                //     height: 100.0,
                //     width: 200.0,
                //     color: Colors.greenAccent,
                //     child: const Text(
                //       'Lorem ipsum dolor sit amet, consectetur adipiscing '
                //       'elit, sed do eiusmod tempor incididunt ut labore et dolore '
                //       'magna aliqua.',
                //
                //      softWrap: true,
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //       textAlign: TextAlign.center,
                //     )),
                // Container(
                //     height: 100.0,
                //     width: 200.0,
                //     color: Colors.amberAccent,
                //     child: const Text(
                //       'Lorem ipsum dolor sit amet, consectetur adipiscing '
                //       'elit, sed do eiusmod tempor incididunt ut labore et dolore '
                //       'magna aliqua.',
                //       softWrap: false,
                //       style: TextStyle(fontSize: 20),
                //       textAlign: TextAlign.center,
                //     ))
              ],
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset("assets/flutter_icon.png"), // <-- Android/iOS
                // Image.network(
                //   "assets/flutter_icon.png",
                //   height: 50,
                // ) // <-- Web
              ],
            )),
          ],
        ));
  }
}
