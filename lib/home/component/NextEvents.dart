import 'package:flutter/material.dart';

class NextEventView extends StatelessWidget {
  const NextEventView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Next Month Events',
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
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
            itemBuilder: (context,index){
                return InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                      color: Colors.white,
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Image.asset(
                              'assets/images/event.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Column(
                            children: [
                              Text(
                                '17 May 2022',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Live Full Pass',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                            ],
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ),
                );
            }
        ),
      ],
    );
  }
}
