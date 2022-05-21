import 'package:Upcove/Widgets/DefaultButton.dart';
import 'package:Upcove/home/widgets/EventDetails.dart';
import 'package:flutter/material.dart';

class ComingEventsView extends StatelessWidget {
  const ComingEventsView ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Up Coming Event',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(250, 30, 32, 50),
              ),
            ),
            TextButton(
                onPressed: (){},
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                ),
            ),
          ],
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          color: Colors.white,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/event.jpg',
                    height: 170,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Event Title',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(250, 30, 32, 50),
                      child: Icon(Icons.star,color: Colors.white,size: 30,),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DefaultButton(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const EventDetailsView()),
                    );
                  },
                  title: 'Join Now',
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
