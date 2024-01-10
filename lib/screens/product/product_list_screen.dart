import 'package:hyprcom_assignment/all_imports.dart';
import 'package:hyprcom_assignment/data/hoodies_data.dart';
import 'package:hyprcom_assignment/model/product_card_model.dart';

class ProductListScreen extends StatelessWidget {
  static const routeName = '/productListScreen';

  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
                "Hoodies (240)",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Flexible(
                child: SizedBox(
                  height: SizeUtils.screenSize(context).height * 0.8,
                  child: GridView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        ProductCardModel model = hoodiesList[index];
                        return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ProductDetailScreen.routeName);
                            },
                            child: ProductCard(
                              imagePath: model.imagePath,
                              price: model.price,
                              imageName: model.productName,
                            ));
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2,
                              mainAxisExtent: 250,
                              mainAxisSpacing: 20.0,
                              crossAxisSpacing: 20.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
