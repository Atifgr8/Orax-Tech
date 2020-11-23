import 'package:flutter/material.dart';


class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RaisedButton(
          color: Colors.blue,
                 shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0)),
          child: Text("  Follow  ",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          onPressed: (){

        }),
        FlatButton(
       shape: new RoundedRectangleBorder(
         side: BorderSide(
            color: Colors.blue,
            width: 1,
            style: BorderStyle.solid
          ),
         borderRadius: new BorderRadius.circular(3.0)
         ),
            onPressed: (){}, 
          child: Text("  Message  "))
            ]
    );
  }
}