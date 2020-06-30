import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.widget.dart';
import 'package:vault_academy/screens/course_detail_screen.dart';

class CourseListItem extends StatelessWidget {
  final String courseId;
  final String image;
  final String title;
  final String author;
  final double ratings;
  CourseListItem({
    @required this.courseId,
    @required this.image,
    @required this.title,
    @required this.author,
    @required this.ratings,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          pushNewScreenWithRouteSettings(
            context,
            settings: RouteSettings(
                name: CourseDetailScreen.routeName, arguments: courseId),
            screen: CourseDetailScreen(),
            platformSpecific:
                false, // OPTIONAL VALUE. False by default, which means the bottom nav bar will persist
            withNavBar: true, // OPTIONAL VALUE. True by default.
          );
          // Navigator.of(context).pushNamed(
          //   CourseDetailScreen.routeName,
          //   arguments: courseId,
          // );
        },
        // isThreeLine: true,
        leading: Image.asset(image),
        title: Text(
          title,
          style: TextStyle(fontSize: 22),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(author),
            RatingBar(
              ignoreGestures: true,
              initialRating: ratings,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Theme.of(context).accentColor,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
    );
  }
}
