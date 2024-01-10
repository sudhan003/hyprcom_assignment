import 'package:hyprcom_assignment/all_imports.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  const CategoryWidget(
      {super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.screenSize(context).height * 0.08,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset(imagePath),
            ),
            const SizedBox(width: 20),
            Text(
              categoryName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
