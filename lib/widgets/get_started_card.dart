import 'package:flutter/material.dart';
import 'package:vault_academy/contstants.dart';

class GetStartedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate),
          image: AssetImage('assets/images/vault.jpg'), fit: BoxFit.cover),
      ),
      height: 200,
      width: 500,
      child: Card(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The Vault Academy',
              style: TextStyle(
                  fontFamily: kFontMontserrat,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 30.0),
            ),
            SizedBox(height: 15.0,),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              onPressed: () {},
              child: Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold),),
              color: Theme.of(context).accentColor,
            )
          ],
        ),
      ),
    );
  }
}
