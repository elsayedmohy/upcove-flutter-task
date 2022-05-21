import 'package:flutter/material.dart';

import 'component/StartCard.dart';

class StartPageView extends StatelessWidget {
  const StartPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(250, 30, 32, 50),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            height: 500,
            child: StartCardView(),
          ),
        ),
      ),
    );
  }
}
