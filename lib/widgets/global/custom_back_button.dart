import 'package:hyprcom_assignment/all_imports.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenSize.height * 0.05,
        width: screenSize.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.secondaryColor,
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.iconColor,
        ),
      ),
    );
  }
}
