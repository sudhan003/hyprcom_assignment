import 'package:hyprcom_assignment/all_imports.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeUtils.screenSize(context).height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.primaryColor,
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: SizeUtils.screenSize(context).height * 0.025,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        )),
      ),
    );
  }
}
