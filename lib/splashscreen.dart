import 'package:flutter/material.dart';
import 'package:proto/themes/colors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image(
                width: 300,
                image: AssetImage("assets/icon.jpg"),
              ),
            ),
            // Text(
            //   "Powered BY",
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
      // bottomSheet: const Center(
      //   child: Text(
      //     "Cancel",
      //     style: TextStyle(
      //       fontSize: 15,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
