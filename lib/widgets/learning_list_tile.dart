import 'package:flutter/material.dart';

class LearningListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  LearningListTile({
    @required this.icon,
    @required this.title,
    @required this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        '$title - ',
        textAlign: TextAlign.left,
      ),
      subtitle: Text(
        '$subTitle',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
