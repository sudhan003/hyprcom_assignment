import 'package:hyprcom_assignment/all_imports.dart';

class ProductQuantityWidget extends StatelessWidget {
  ProductQuantityWidget({super.key});

  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeUtils.screenSize(context).height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Quantity",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                children: [
                  _iconButton(context, Icons.add, onTap: () {}),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "$i",
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _iconButton(context, Icons.remove),
                ],
              )
            ],
          ),
        ));
  }
}

Widget _iconButton(BuildContext context, IconData iconData,
    {VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: SizeUtils.screenSize(context).height * 0.04,
      width: SizeUtils.screenSize(context).height * 0.04,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: Colors.white,
          size: 17,
        ),
      ),
    ),
  );
}
