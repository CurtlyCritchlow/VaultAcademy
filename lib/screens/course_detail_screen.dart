import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_academy/models/course.dart';
import 'package:vault_academy/models/course_data.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = 'course-detail';

  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context).settings.arguments as String;
    return Consumer<CourseData>(builder: (context, courseData, child) {
      Course course = courseData.findById(courseId);
      return Scaffold(
        appBar: AppBar(
          title: Text(course.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Text(course.description),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text('What you will Learn'),
                    Column(children: course.willLearn.map(
                      (e) => ListTile(
                        leading: Icon(Icons.check),
                        title: Text(e),
                      ),
                    ).toList(),)
                  ],
                ),
              ),
              Card(
                child: Column(children: course.objectives.map((e) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(e['image']),
                      Text(e['subtitle']),
                      Text(e['title']),
                      Text(e['description']),
                      SizedBox(height: 8,)
                    ],
                  ),
                )).toList(),),
              )
            ],
          ),
        ),
      );
    });
  }
}
