import 'package:Upcove/Widgets/DefaultButton.dart';
import 'package:Upcove/Widgets/MyText.dart';
import 'package:flutter/material.dart';

class EventDetailsView extends StatelessWidget {
  const EventDetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Event Details',
          style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
          centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity ,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/event1.jpg',
              ),
            ),
            MyText(
              title: '17 May 2022',
            ),
            MyText(
              title: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Loren Ipsum has Lorem Ipsum is simply dummy text of the printing and typesetting industry Loren Ipsum has',
              color: Colors.grey,
              size: 20,
            ),
            DefaultButton(
              onTap: (){},
              title: 'Join Now',
            ),
          ],
        ),
      ),
    );
  }
}
