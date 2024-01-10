import 'package:hyprcom_assignment/all_imports.dart';

class AddToBagButton extends StatelessWidget {
  final String price;
  final VoidCallback onTap;

  const AddToBagButton({super.key, required this.price, required this.onTap});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: TextStyle(
                    fontSize: SizeUtils.screenSize(context).height * 0.025,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor),
              ),
              Text(
                "Add to Bag",
                style: TextStyle(
                    fontSize: SizeUtils.screenSize(context).height * 0.025,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
