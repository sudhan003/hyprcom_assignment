import 'package:hyprcom_assignment/all_imports.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        height: screenSize.height * 0.07,
        child: TextFormField(
          style: TextStyle(color: AppColors.textColor),
          decoration: InputDecoration(
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            disabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            fillColor: AppColors.secondaryColor,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
