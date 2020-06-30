import 'package:flutter/foundation.dart';
import 'package:vault_academy/models/course.dart';
import 'dart:collection';

class CourseData extends ChangeNotifier {
  List<Course> _courses = [
    Course(
      id: '001',
      isCurrentlyAvailable: true,
      author: 'Patrick Bet-David',
      image: 'assets/images/valuetainment_logo.jpg',
      ratings: 3,
      title: 'Sales System',
      description: 'In this course you will learn the art of making sales',
      willLearn: [
        'Tools, strategies and mindset to take your business to the next level',
        'How to identify your next moves to optamize your business growth',
        'Keys to problem solving to take your business to the next level '
      ],
      objectives: [
        {
          'title': 'Lesson 1:',
          'subtitle': 'Know your Style of Selling',
          'description':
              'Knowing your approach and style of selling is crucial to your success. The key is to identify an effective style of selling that produces results.',
          'image': 'assets/images/sales_system_lesson_1.jpg'
        },
        {
          'title': 'Lesson 2:',
          'subtitle': 'Know your Sales Personality',
          'description':
              'Your customers are a by-product of how you present yourself. Making the necessary adjustments to your approach can help you enter new markets.',
          'image': 'assets/images/sales_system_lesson_2.jpg'
        },
        {
          'title': 'Lesson 3:',
          'subtitle': 'Know your Industry',
          'description':
              'Once you have mastered your own unique approach and style of selling, there is a way to approach your industry in order to compete with the established companies who have more experience than you.',
          'image': 'assets/images/sales_system_lesson_3.jpg'
        },
        {
          'title': 'Lesson 4:',
          'subtitle': 'Know your Sales Flow',
          'description':
              'Every year, billions of dollars of commissions are lost due to a lack of attention to details. Taking an inventory of your sales flow will help identify areas where money is being lost or left on the table.',
          'image': 'assets/images/sales_system_lesson_4.jpg'
        },
        {
          'title': 'Lesson 5:',
          'subtitle': 'Know your Tracking System',
          'description':
              'The most significant separator in the world of business is the implementation of studying trends through data. The key is to have a system on how you track data.',
          'image': 'assets/images/sales_system_lesson_5.jpg'
        }
      ],
    ),
    Course(
        id: '002',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Art of Public Speaking'),
    Course(
        id: '003',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'How to Negotiate'),
    Course(
        id: '004',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Raising Money'),
    Course(
        id: '005',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Scaling a Company'),
    Course(
        id: '006',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Personal Finance'),
    Course(
        id: '007',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Building Your Brand on Social Media'),
    Course(
        id: '008',
        author: 'Patrick Bet-David',
        image: 'assets/images/valuetainment_logo.jpg',
        ratings: 3,
        title: 'Secret to Mastering Systems'),
  ];

  int get courseCount {
    int count = _courses.length;
    return count;
  }

  void filterCourses(String value) {
    print('filter courses called');
    if (value.isEmpty) {}
    _courses.retainWhere((course) => course.title.contains(value));
    notifyListeners();
  }

  UnmodifiableListView<Course> get courses {
    return UnmodifiableListView(_courses);
  }

  Course findById(courseId) {
    return _courses.singleWhere((element) => element.id == courseId);
  }
}
