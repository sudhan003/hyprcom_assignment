import 'package:hyprcom_assignment/all_imports.dart';

class CartWidget extends StatelessWidget {
  final String size;
  final String color;
  final String price;

  const CartWidget(
      {super.key,
      required this.size,
      required this.color,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.screenSize(context).height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                      height: SizeUtils.screenSize(context).height * 0.2,
                      width: SizeUtils.screenSize(context).width * 0.18,
                      child: Image.asset(
                        ImageUtils.cartImage,
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text(context, "Men's Harrington Jacket",
                          AppColors.textColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _richText(context, 'Size', 'M'),
                          const SizedBox(width: 10),
                          _richText(context, 'Color', 'Lemon'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      _iconButton(context, Icons.add),
                      const SizedBox(
                        width: 10.0,
                      ),
                      _iconButton(context, Icons.remove),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _iconButton(BuildContext context, IconData iconData) {
  return Container(
    // height: SizeUtils.screenSize(context).height * 0.05,
    // width: SizeUtils.screenSize(context).height * 0.05,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(100),
    ),
    child: Icon(
      iconData,
      size: 20,
    ),
  );
}

Widget _text(BuildContext context, String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      color: color,
    ),
  );
}

Widget _richText(BuildContext context, String categoryType, String text) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: categoryType,
        style: const TextStyle(fontSize: 12, color: Colors.white54)),
    TextSpan(
        text: ' - ',
        style: TextStyle(fontSize: 12, color: AppColors.textColor)),
    TextSpan(
        text: text, style: TextStyle(fontSize: 12, color: AppColors.textColor)),
  ]));
}
