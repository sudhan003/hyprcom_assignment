import 'package:hyprcom_assignment/all_imports.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final double price;
  final double? prePrice;

  const ProductCard(
      {super.key,
      required this.imagePath,
      required this.imageName,
      required this.price,
      this.prePrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.screenSize(context).height * 0.3,
      width: SizeUtils.screenSize(context).width * 0.4,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
            child: SizedBox(
                height: SizeUtils.screenSize(context).height * 0.23,
                width: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 6.0),
            child: Text(
              imageName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 3.0),
            child: Row(
              children: [
                Text(
                  "\$$price",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 20,
                ),
                if (prePrice != null)
                  Text(
                    "\$$prePrice",
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 3,
                        decorationColor: Colors.grey,
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
