
import 'package:coffee/constants/exports.dart';
import 'package:coffee/screens/dashboard.dart';
import 'package:coffee/screens/productPage.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: kSplashPage,
        transition: Transition.rightToLeft,
        page: () => const SplashScreen()),
    GetPage(
        name: Kdashboard,
        transition: Transition.rightToLeft,
        page: () => Dashboard()),
    GetPage(
        name: KproductPage,
        transition: Transition.rightToLeft,
        page: () => const ProductPage()),
   
  ];
}
