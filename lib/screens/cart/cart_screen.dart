import 'package:hyprcom_assignment/all_imports.dart';
import 'package:hyprcom_assignment/widgets/features/cart/cart_widget.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cartScreen';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _headerRow(context),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Remove All",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: AppColors.textColor),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CartWidget(size: 'M', color: 'Lemon', price: '148'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.backgroundColor,
        height: SizeUtils.screenSize(context).height * 0.45,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              _priceDetailRow(context, 'Subtotal', '200'),
              const SizedBox(height: 15),
              _priceDetailRow(context, 'Shipping Cost', '8.00'),
              const SizedBox(height: 15),
              _priceDetailRow(context, 'Tax', '0.00'),
              const SizedBox(height: 15),
              _priceDetailRow(context, 'Total', '208',
                  fontWeight: FontWeight.bold),
              const SizedBox(height: 40),
              const CouponWidget(
                hintText: 'Enter Coupon Code',
              ),
              const SizedBox(height: 40),
              CustomButton(text: "Checkout", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _headerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(
          right: SizeUtils.screenSize(context).width * 0.3,
        ),
        child: CustomBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      Text(
        "Cart",
        style: Theme.of(context).textTheme.titleMedium,
        // textAlign: TextAlign.ju,
      ),
    ],
  );
}

Widget _priceDetailRow(BuildContext context, String priceType, String price,
    {FontWeight? fontWeight}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        priceType,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        "\$$price",
        style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            color: AppColors.textColor,
            fontWeight: fontWeight),
      ),
    ],
  );
}
