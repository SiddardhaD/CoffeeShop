import 'package:coffee/controllers/dashboardController.dart';

import '../constants/exports.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  List<Widget> dashboardWidgets = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  DashboardController dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: BottomNavWidget(),
      body: dashboardController.selcetedIndex.value == 0
          ? HomePage()
          : HomePage(),
    );
  }
}
