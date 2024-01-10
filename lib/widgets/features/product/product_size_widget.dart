import 'package:hyprcom_assignment/all_imports.dart';

class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.screenSize(context).height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Size",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            DropdownMenu(
                width: 70,
                trailingIcon: Image.asset(ImageUtils.downArrowIcon),
                textStyle: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
                inputDecorationTheme: const InputDecorationTheme(
                    contentPadding: EdgeInsets.all(0),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none)),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: null, label: 'S'),
                  DropdownMenuEntry(value: null, label: 'M'),
                  DropdownMenuEntry(value: null, label: 'L'),
                ]),
          ],
        ),
      ),
    );
  }
}
