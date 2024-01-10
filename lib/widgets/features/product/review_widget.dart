import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:hyprcom_assignment/all_imports.dart';

class ReviewWidget extends StatefulWidget {
  final String imageName;
  final String userName;
  final String review;
  final String days;

  const ReviewWidget(
      {super.key,
      required this.imageName,
      required this.userName,
      required this.review,
      required this.days});

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  double value = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(widget.imageName),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            RatingStars(
              value: value,
              starSize: 12,
              starSpacing: 5,
              starCount: 5,
              valueLabelVisibility: false,
              starOffColor: Colors.white54,
              starColor: AppColors.primaryColor,
              onValueChanged: (value) {
                setState(() {
                  value = value;
                });
              },

              // maxValue: 5.0,
              // maxValueVisibility: true,
            ),
          ],
        ),
        Text(
          widget.review,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          "${widget.days} days ago",
          style: TextStyle(color: AppColors.textColor, fontSize: 12),
        )
      ],
    );
  }
}
// RatingBar.builder(
//   initialRating: 3,
//   minRating: 1,
//   direction: Axis.horizontal,
//   allowHalfRating: true,
//   itemCount: 5,
//   // itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
//   itemBuilder: (context, _) => SizedBox(
//     width: 50,
//     child: Icon(
//       Icons.star,
//       color: AppColors.primaryColor,
//       size: 5,
//     ),
//   ),
//   itemSize: 10,
//   itemPadding: EdgeInsets.all(7),
//   onRatingUpdate: (rating) {},
// ),
