import 'package:hyprcom_assignment/all_imports.dart';

class CouponWidget extends StatelessWidget {
  final String hintText;

  const CouponWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: SizeUtils.screenSize(context).height * 0.07,
        child: TextFormField(
          style: TextStyle(color: AppColors.textColor),
          decoration: InputDecoration(
            prefixIcon: Image.asset(ImageUtils.discountIcon),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _iconButton(context),
            ),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            disabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            fillColor: AppColors.secondaryColor,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.white54,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _iconButton(BuildContext context) {
  return Container(
    height: SizeUtils.screenSize(context).height * 0.05,
    width: SizeUtils.screenSize(context).height * 0.05,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(100),
    ),
    child: Icon(
      Icons.arrow_forward_ios_outlined,
      size: 20,
      color: AppColors.iconColor,
    ),
  );
}
