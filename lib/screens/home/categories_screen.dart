import 'package:hyprcom_assignment/all_imports.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categoriesScreen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  "Shop by Categories",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: SizeUtils.screenSize(context).height * 0.8,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        CategoryModel categoryModel = categoryList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ProductListScreen.routeName);
                              },
                              child: CategoryWidget(
                                categoryName: categoryModel.categoryName,
                                imagePath: categoryModel.imagePath,
                              )),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
