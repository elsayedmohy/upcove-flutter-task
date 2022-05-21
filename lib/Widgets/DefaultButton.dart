import 'package:flutter/material.dart';

import 'MyText.dart';

class DefaultButton extends StatelessWidget {

   final String title;
   final Function() onTap;
   final Color color;
   final Color textColor;
   final double textSize;
   final Color borderColor;
   final double width;
   final double elev;
   final BorderRadius borderRadius;
   final EdgeInsets margin;

  DefaultButton(
      {
         this.title,
         this.onTap,
         this.color,
         this.textColor,
         this.textSize,
         this.borderColor,
         this.width,
         this.elev,
         this.margin,
         this.borderRadius
      }
      );

  @override
  Widget build(BuildContext context) {
    Color border=Colors.deepPurple;
    return Container(
      width: width??MediaQuery.of(context).size.width,
      height: 45,
      margin: margin??EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: ElevatedButton(
        onPressed: onTap,
        child: MyText(
          color: Colors.white,
          size: textSize,
          title: '$title',
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(10),
            side: BorderSide(color: borderColor??border,width: 3),
          ),
          elevation: elev??0,
        ),
      ),
    );
  }
}
