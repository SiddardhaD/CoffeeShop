import '../constants/exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: black),
          ),
          Image.asset("assets/images/splash.png"),
          Positioned(
              bottom: 200.h,
              left: 0,
              right: 0,
              child: const Text(
                "Coffee so good",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35, color: white, fontWeight: FontWeight.w900),
              )),
          Positioned(
              bottom: 160.h,
              left: 0,
              right: 0,
              child: const Text(
                "your taste buds",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35, color: white, fontWeight: FontWeight.w900),
              )),
          Positioned(
              bottom: 120.h,
              left: 0,
              right: 0,
              child: const Text(
                "will love it.",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35, color: white, fontWeight: FontWeight.w900),
              )),
          Positioned(
              bottom: 70.h,
              left: width / 10,
              right: width / 10,
              child: Text(
                "The best grain, the finest roast, the powerful flavor.",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 15,
                    color: subHeading,
                    fontWeight: FontWeight.normal),
              )),
          Positioned(
            bottom: 10.h,
            left: width / 7,
            right: width / 7,
            child: GestureDetector(
                onTap: () {
                  Get.toNamed(Kdashboard);
                },
                child: Container(
                  height: 35.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const Text(
                    "Get Started",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
