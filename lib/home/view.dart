import 'package:Upcove/home/widgets/SavedEvents.dart';
import 'package:flutter/material.dart';

import 'component/CommingEvents.dart';
import 'component/NextEvents.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Upcove',
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(250, 30, 32, 50),
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SavedEventsView()),
            );
          },
          icon: Image.asset('assets/images/menu.png',width: 35,),
        ),
        elevation: 2,
        actions: [
          TextButton(
            onPressed: (){},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(5)
              ),
                child: Image.asset(
                  'assets/images/event.jpg',
                  fit: BoxFit.fill,
                ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            ComingEventsView(),
            SizedBox(
              height: 10,
            ),
            NextEventView(),
          ],
        ),

      ),
    );
  }
}
