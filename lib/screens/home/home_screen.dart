import 'package:hyprcom_assignment/all_imports.dart';
import 'package:hyprcom_assignment/data/new_in_data.dart';
import 'package:hyprcom_assignment/data/top_selling_data.dart';
import 'package:hyprcom_assignment/model/product_card_model.dart';
import 'package:hyprcom_assignment/widgets/features/home/category_circle_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreenRoute";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _headerRow(context),
                  const SizedBox(height: 20.0),
                  const CustomSearchBar(),
                  const SizedBox(height: 20.0),
                  _titleRow(context, 'Categories', () {
                    Navigator.pushNamed(context, CategoriesScreen.routeName);
                  }),
                  const SizedBox(height: 10),
                  _categoryRow(context),
                  const SizedBox(height: 15),
                  _titleRow(context, 'Top Selling', () {}),
                  const SizedBox(height: 10),
                  _topSelling(context),
                  // SizedBox(height: 300, child: _topSelling(context)),
                  // const SizedBox(height: 10),
                  const SizedBox(height: 20),
                  _titleRow(context, 'New In', () {},
                      color: AppColors.primaryColor),
                  const SizedBox(height: 10),
                  _newIn(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 25),
          useLegacyColorScheme: true,
          showUnselectedLabels: false,
          enableFeedback: false,
          showSelectedLabels: false,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          currentIndex: activeIndex,
          selectedItemColor: AppColors.primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
                label: "    ",
                backgroundColor: AppColors.backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.notification_important_outlined),
                label: "    ",
                backgroundColor: AppColors.backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.receipt_long_outlined),
                label: "    ",
                backgroundColor: AppColors.backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person_2_outlined),
                label: "    ",
                backgroundColor: AppColors.backgroundColor),
          ],
        ));
  }
}

Widget _headerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
        child: Image.asset(ImageUtils.profileImage),
      ),
      CustomIconButton(
        imageName: ImageUtils.bagIcon,
      ),
    ],
  );
}

Widget _titleRow(BuildContext context, String title, VoidCallback onTap,
    {Color? color = Colors.white}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: SizeUtils.screenSize(context).height * 0.02,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          "See all",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: SizeUtils.screenSize(context).height * 0.02,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
        ),
      )
    ],
  );
}

Widget _categoryRow(BuildContext context) {
  return SizedBox(
    height: SizeUtils.screenSize(context).height * 0.1,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          CategoryModel categoryModel = categoryList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 0.0),
            child: CategoryCircleWidget(
              categoryName: categoryModel.categoryName,
              imagePath: categoryModel.imagePath,
            ),
          );
        }),
  );
}

Widget _topSelling(BuildContext context) {
  return SizedBox(
    height: SizeUtils.screenSize(context).height * 0.3,
    child: ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        ProductCardModel productCardModel = topSelling[index];
        return Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 0.0),
          child: ProductCard(
            imageName: productCardModel.productName,
            imagePath: productCardModel.imagePath,
            price: productCardModel.price,
            prePrice: productCardModel.prePrice,
          ),
        );
      },
    ),
  );
}

Widget _newIn(BuildContext context) {
  return SizedBox(
    height: SizeUtils.screenSize(context).height * 0.3,
    child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ProductCardModel productCardModel = newInData[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 0.0),
            child: ProductCard(
                imagePath: productCardModel.imagePath,
                price: productCardModel.price,
                imageName: productCardModel.productName),
          );
        }),
  );
}
