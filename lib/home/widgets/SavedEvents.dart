import 'package:Upcove/Widgets/MyText.dart';
import 'package:flutter/material.dart';

class SavedEventsView extends StatelessWidget {
  const SavedEventsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Saved Events',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/save.png',height: 200,)),
          SizedBox(
            height: 20,
          ),
          MyText(
            title: 'There is No saved Events',
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
