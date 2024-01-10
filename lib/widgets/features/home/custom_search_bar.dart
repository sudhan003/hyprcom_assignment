import 'package:hyprcom_assignment/all_imports.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.screenSize(context).height * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: TextFormField(
          style: TextStyle(color: AppColors.textColor),
          decoration: InputDecoration(
              prefixIcon: Image.asset(ImageUtils.searchIcon),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              fillColor: AppColors.secondaryColor,
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(
                color: AppColors.textColor,
              ),
              contentPadding: const EdgeInsets.all(5)),
        ),
      ),
    );
  }
}
