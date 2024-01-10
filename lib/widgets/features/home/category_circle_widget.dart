import 'package:hyprcom_assignment/all_imports.dart';

class CategoryCircleWidget extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  const CategoryCircleWidget(
      {super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 55,
          width: 55,
          child: Image.asset(imagePath, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          categoryName,
          style: TextStyle(color: AppColors.textColor, fontSize: 13),
        ),
      ],
    );
  }
}
