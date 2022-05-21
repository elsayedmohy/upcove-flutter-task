import 'dart:async';

import 'package:Upcove/StartPage/view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),()=>Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const StartPageView()),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(250, 30, 32, 50),
        width: double.infinity,
        height: double.infinity,
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StartPageView()),
            );
          },
          child: Center(
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
