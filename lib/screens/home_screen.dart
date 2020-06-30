import 'package:flutter/material.dart';
import 'package:vault_academy/widgets/entrepreneur_community_card.dart';
import 'package:vault_academy/widgets/get_started_card.dart';
import 'package:vault_academy/widgets/learn.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/valuetainment_logo.jpg'),
        title: Text(
          'Vault Academy',
          style: TextStyle(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GetStartedCard(),
          Expanded(
            child: ListView(
              children: <Widget>[
                EntrepreneurCommunityCard(),
                Learn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
