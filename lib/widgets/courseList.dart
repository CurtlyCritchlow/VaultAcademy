import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault_academy/models/course_data.dart';
import 'package:vault_academy/widgets/course_list_item.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CourseData>(builder: (context, courseData, child) {
      return ListView.builder(
        
        itemCount: courseData.courseCount,
        itemBuilder: (context, index) {
          var course = courseData.courses[index];
          return CourseListItem(
            courseId: course.id,
            image: course.image,
            title: course.title,
            author: course.author,
            ratings: 3,
          );
        },
      );
    });
  }
}
