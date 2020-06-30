import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vault_academy/widgets/learning_list_tile.dart';

class Learn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('WHAT YOU\'LL LEARN'),
        SizedBox(height: 5),
        LearningListTile(
          icon: FontAwesomeIcons.male,
          title: 'HOW TO RECREATE YOURSELF',
          subTitle:
              'You are where you are based on the way you view money, success, relationships and yourself. In order to recreate yourself, you will need a set of tools, strategies and mindsets to help you take that quantum leap to the next level.',
        ),
        SizedBox(height: 10),
        LearningListTile(
          icon: FontAwesomeIcons.dollarSign,
          title: 'HOW TO MAKE YOUR NEXT 15 MOVES',
          subTitle:
              'Your next 3 moves may be different than someone else’s. In The Vault Academy, we will identify your BEST next 10-15 moves in both your personal and business life with each custom course.',
        ),
        SizedBox(height: 10),
        LearningListTile(
          icon: FontAwesomeIcons.cogs,
          title: 'HOW TO SCALE & PROBLEM SOLVE',
          subTitle:
              'Many know how to win during good economic times but only a few know how to win during a recession or an economic collapse. The Forbes 400 is made up of leaders who knew how to anticipate, adapt and adjust swiftly to capitalize during bad times.',
        ),
      ],
    );
  }
}
