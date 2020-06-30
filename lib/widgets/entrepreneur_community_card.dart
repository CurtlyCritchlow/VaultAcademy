import 'package:flutter/material.dart';

class EntrepreneurCommunityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Learn How to Crack the Code to Entrepreneurship', style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
          SizedBox(height: 10.0,),
          Text('Join the community of 5+ million entrepreneurs, executives and sales professionals.', textAlign: TextAlign.center,)
        ],
      ),
      
    );
  }
}
