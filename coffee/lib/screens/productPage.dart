import '../constants/exports.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
          color: black,
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text("Details",
            style: TextStyle(
                fontSize: 13, color: grey, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: grey,
              size: 18,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/product3.png")),
              SizedBox(
                height: 8.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Cappuccino",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "with Chocolate",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14, color: grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: buttonColor,
                        ),
                        SizedBox(width: 5.w),
                        const Text(
                          "4.8",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5.w),
                        const Text(
                          "( 230 )",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/bean.png",
                          scale: 0.8,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Image.asset(
                          "assets/images/milk.png",
                          scale: 0.8,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(
                  height: 2.h,
                  thickness: 1.r,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 10.w),
                child: Container(
                  child: Text(
                    "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the  espresso coffee and 85ml of fresh milk the",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 15,
                        color: grey,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Size",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 75.w,
                      padding: EdgeInsets.all(8.r),
                      margin: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        border: Border.all(color: buttonColor),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: const Text("S",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      height: 40.h,
                      width: 75.w,
                      padding: EdgeInsets.all(8.r),
                      margin: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: const Text("M",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      height: 40.h,
                      width: 75.w,
                      padding: EdgeInsets.all(8.r),
                      margin: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: const Text("L",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(children: [
                    const Text(
                      "Price ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 12,
                          color: grey,
                          fontWeight: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\u{20B9} 35.5 ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 14,
                            color: buttonColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],),
                  Container(
                    height: 40.h,
                    width:200.w,
                    decoration: BoxDecoration(color: buttonColor,borderRadius: BorderRadius.circular(8.r)),
                    alignment: Alignment.center,
                    child: Text("Buy Now",style: TextStyle(
                            height: 1.5,
                            fontSize: 14,
                            color: white,
                            fontWeight: FontWeight.bold),),)
                ],),
              )
            ]),
      ),
    );
  }
}
