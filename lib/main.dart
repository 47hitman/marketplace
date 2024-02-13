import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proto/api/firebase_api.dart';
import 'package:proto/firebase_options.dart';
import 'package:proto/screens/screen1.dart';
import 'package:proto/splashscreen.dart';

import 'widgets/bottom_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  // await initializeService();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
  //   runApp(const MyApp());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: {
      //   '/splash': (context) => const Splashscreen(),
      //   '/home': (context) => const BottomBar(
      //         initialIndex: 0,
      //       ),
      // },
      // initialRoute: '/splash',
    );
  }
}
