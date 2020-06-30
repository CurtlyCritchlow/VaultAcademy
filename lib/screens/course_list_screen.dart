import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vault_academy/models/course_data.dart';

import 'package:vault_academy/widgets/courseList.dart';

class CourseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Consumer<CourseData>(builder: (context, coursesData, child) {
          return TextField(
            onSubmitted: (value) {
              print(value);
              Provider.of<CourseData>(context, listen: false)
                  .filterCourses(value);
              // coursesData.filterCourses(value);
            },
          );
        }),
        actions: <Widget>[Icon(FontAwesomeIcons.shoppingCart)],
      ),
      body: Container(
        child: CourseList(),
      ),
    );
  }
}
