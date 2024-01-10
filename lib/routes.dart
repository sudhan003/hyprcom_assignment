import 'package:hyprcom_assignment/screens/cart/cart_screen.dart';

import 'all_imports.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case CategoriesScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CategoriesScreen(),
      );
    case ProductListScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProductListScreen(),
      );
    case ProductDetailScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProductDetailScreen(),
      );
    case CartScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CartScreen(),
      );
    default:
      return MaterialPageRoute(builder: (_) => const AuthScreen());
  }
}
