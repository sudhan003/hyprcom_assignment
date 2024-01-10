import 'package:hyprcom_assignment/all_imports.dart';

class ProductColorWidget extends StatelessWidget {
  const ProductColorWidget({super.key});

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
              "Color",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            DropdownMenu(
                width: 90,
                leadingIcon: Icon(
                  Icons.circle,
                  color: Colors.green[100],
                ),
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
                  DropdownMenuEntry(
                    value: null,
                    label: '',
                    leadingIcon: Icon(
                      Icons.circle,
                      color: Colors.purple,
                    ),
                  ),
                  DropdownMenuEntry(
                    value: null,
                    label: '',
                    leadingIcon: Icon(
                      Icons.circle,
                      color: Colors.grey,
                    ),
                  ),
                  DropdownMenuEntry(
                    value: null,
                    label: '',
                    leadingIcon: Icon(
                      Icons.circle,
                      color: Colors.white,
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
