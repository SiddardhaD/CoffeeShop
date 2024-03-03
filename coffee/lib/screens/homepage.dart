import 'package:glass_kit/glass_kit.dart';

import '../constants/exports.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    black,
                    black.withOpacity(0.7),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )),
                height: size.height / 2.7,
                child: Column(children: [
                  SizedBox(
                    height: size.height / 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: subHeading,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                const Text("Bilzen, Tanjungbalai",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: white,
                                        fontWeight: FontWeight.bold)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: white,
                                    ))
                              ],
                            )
                          ],
                        ),
                        Image.asset("assets/images/Image.png")
                      ],
                    ),
                  ),
                  Container(
                    height: 60.h,
                    padding: EdgeInsets.all(8.r),
                    child: CustomFormField(
                        fillcolor: black.withOpacity(0.8),
                        prefix: Image.asset("assets/images/search-normal.png"),
                        suffix: Image.asset(
                          "assets/images/Frame 4.png",
                          scale: 1.5,
                        ),
                        hintStyle: const TextStyle(color: white),
                        enabled: true,
                        maxLines: 2,
                        obscureText: false,
                        readOnly: false,
                        label: "",
                        hintText: "Search Coffee"),
                  )
                ]),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: size.height / 3.5,
                child: Container(
                  child: Image.asset("assets/images/banner.png"),
                ),
              ),
              Container(
                height: size.height / 2.0,
              )
            ],
          ),
          Container(
            height: 40.h,
            alignment: Alignment.center,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(right: 4.w, left: 4.w),
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: buttonColor),
                      child: const Text(
                        "Cappuccino",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ));
                }),
          ),
          SizedBox(
            width: double.infinity,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(KproductPage);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(children: [
                        Image.asset("assets/images/product.png"),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          "Cappuccino",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          "with Chocolate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13,
                              color: grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              " \u{20B9} 35.5",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(7.r)),
                              child: Icon(
                                Icons.add,
                                color: white,
                                size: 12.sp,
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
