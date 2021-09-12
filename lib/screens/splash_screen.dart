import 'package:flutter/material.dart';
import 'package:flutter_verstka/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    handleSplash();
  }

  handleSplash() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(context,
        PageTransition(type: PageTransitionType.fade, child: MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
