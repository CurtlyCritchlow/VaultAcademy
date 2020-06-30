class Course {
  String id;
  String image;
  String title;
  String author;
  double ratings;
  String description;
  List<String> willLearn;
  List<Map<String, String>> objectives;
  bool isCurrentlyAvailable;

  Course({
    this.id,
    this.image,
    this.title,
    this.author,
    this.ratings,
    this.description,
    this.willLearn,
    this.objectives,
    this.isCurrentlyAvailable = false,
  });
}
