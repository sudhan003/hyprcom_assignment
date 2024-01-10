import 'package:hyprcom_assignment/all_imports.dart';

class CustomIconButton extends StatelessWidget {
  final String imageName;

  const CustomIconButton({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.screenSize(context).height * 0.05,
      width: SizeUtils.screenSize(context).height * 0.05,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(imageName),
    );
  }
}
