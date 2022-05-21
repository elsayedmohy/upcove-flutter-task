import 'package:Upcove/home/view.dart';
import 'package:flutter/material.dart';

class StartCardView extends StatelessWidget {
  const StartCardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.blue, width: 6),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20),
      elevation: 10,
      color: Colors.white,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Image.asset('assets/images/hand.png',),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Watching Free Concerts with Friends',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 30, 32, 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry Loren Ipsum has',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeView()),
                );
              },
              child: Text(
                'GET STARTED',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(250, 30, 32, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
