import 'package:hyprcom_assignment/all_imports.dart';
import 'package:hyprcom_assignment/screens/cart/cart_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/productDetailScreen';

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _headerRow(context),
              ),
              _imagesRow(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Men's Harrington Jacket",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "\$148",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const ProductSizeWidget(),
                    const SizedBox(height: 10),
                    const ProductColorWidget(),
                    const SizedBox(height: 10),
                    ProductQuantityWidget(),
                    const SizedBox(height: 20),
                    _bodyText(context,
                        "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless."),
                    const SizedBox(height: 20),
                    _titleText(context, "Shipping & Returns"),
                    const SizedBox(height: 10),
                    _bodyText(context,
                        "Free standard shipping and free 60-day returns"),
                    const SizedBox(height: 20),
                    _titleText(context, "Reviews"),
                    const SizedBox(height: 10),
                    _titleText(context, "4.5 Ratings"),
                    const SizedBox(height: 10),
                    _bodyText(context, "213 Reviews"),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: _reviewList(context),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: AddToBagButton(
          onTap: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
          price: "148",
        ),
      ),
    );
  }
}

Widget _headerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomBackButton(
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Container(
        height: SizeUtils.screenSize(context).height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.secondaryColor,
        ),
        child: Image.asset(ImageUtils.favouriteIcon),
      ),
    ],
  );
}

Widget _imagesRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
    child: SizedBox(
      height: SizeUtils.screenSize(context).height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(ImageUtils.product1),
          const SizedBox(
            width: 10,
          ),
          Image.asset(ImageUtils.product1),
          const SizedBox(
            width: 10,
          ),
          Image.asset(ImageUtils.product1),
        ],
      ),
    ),
  );
}

Widget _bodyText(BuildContext context, String text) {
  return Text(
    text,
    style: Theme.of(context).textTheme.bodySmall,
  );
}

Widget _titleText(BuildContext context, String text) {
  return Text(
    text,
    style: Theme.of(context).textTheme.titleMedium,
  );
}

Widget _reviewList(BuildContext context) {
  return SizedBox(
    height: 250,
    child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: ReviewWidget(
                imageName: ImageUtils.review1,
                userName: 'Alex Morgan',
                review:
                    'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
                days: '12'),
          );
        }),
  );
}
