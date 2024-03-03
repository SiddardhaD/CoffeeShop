import 'package:coffee/constants/exports.dart';
import 'package:coffee/controllers/dashboardController.dart';

class BottomNavWidget extends StatelessWidget {
  BottomNavWidget({super.key});
  DashboardController dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 15,
      width: size.width,
      decoration: BoxDecoration(
          color: bottomsheet,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r))),
      child: Obx(() =>
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
                onTap: () {
                  dashboardController.selcetedIndex(0);
                },
                child: Image.asset("assets/images/Home.png",
                    color: dashboardController.selcetedIndex.value == 0
                        ? buttonColor
                        : grey)),
            GestureDetector(
                onTap: () {
                  dashboardController.selcetedIndex(1);
                },
                child: Image.asset("assets/images/Heart.png",
                    color: dashboardController.selcetedIndex.value == 1
                        ? buttonColor
                        : grey)),
            GestureDetector(
                onTap: () {
                  dashboardController.selcetedIndex(2);
                },
                child: Image.asset("assets/images/Bag 3.png",
                    color: dashboardController.selcetedIndex.value == 2
                        ? buttonColor
                        : grey)),
            GestureDetector(
                onTap: () {
                  dashboardController.selcetedIndex(3);
                },
                child: Image.asset("assets/images/Notification.png",
                    color: dashboardController.selcetedIndex.value == 3
                        ? buttonColor
                        : grey)),
          ])),
    );
  }
}
