import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ZomatoUI extends StatefulWidget {
  const ZomatoUI({super.key});

  @override
  State<ZomatoUI> createState() => _ZomatoUIState();
}

class _ZomatoUIState extends State<ZomatoUI> {
  List imagelist = [
    "assets/images/food1.png",
    "assets/images/food2.png",
    "assets/images/food3.png",
    "assets/images/DhosaImg.png",
    "assets/images/Mask Group.png",
  ];
  List namelist = ["Healthy", "Home Style", "Pizza", "Chicken", "Fast Food"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20.sp,
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 25.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Home",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: "\nHR's Empire, Surat, GJ",
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ])),
                    const Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 24.sp,
                    ),
                    CircleAvatar(
                      radius: 20.sp,
                      backgroundImage:
                          const AssetImage("assets/images/AppLogo.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Image.asset("assets/images/Zomato1.png"),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Eat What Makes you Happy",
                  style:
                      TextStyle(fontSize: 13.5.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 13.h,
                  child: ListView.builder(
                      itemCount: imagelist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 3.w),
                            child: Column(
                              children: [
                                Image.asset(
                                  imagelist[index].toString(),
                                  height: 9.h,
                                ),
                                const Spacer(),
                                Text(namelist[index].toString())
                              ],
                            ),
                          )),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "127 restaurants around you",
                      style: TextStyle(
                          fontSize: 13.5.sp, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      height: 3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.sp)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/MobileData.png",
                            height: 1.5.h,
                          ),
                          const Text("Popular")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(children: [
                  Image.asset("assets/images/Zomato2.png"),
                  Positioned(
                      child: Padding(
                    padding: EdgeInsets.only(
                        left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 3.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4.sp)),
                              child: const Center(
                                child: Text(
                                  "Promoted",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 11.sp,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/SaveFood.png",
                                height: 1.6.h,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 3.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(89, 133, 231, 1),
                                  borderRadius: BorderRadius.circular(4.sp)),
                              child: Center(
                                child: Text(
                                  "70 % OFF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 3.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.sp),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.pedal_bike_sharp,
                                    size: 15.sp,
                                  ),
                                  Text(
                                    "25 mins",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ]),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "Sultan Kacchi Biryani",
                      style:
                          TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      height: 2.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(4.sp)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "4.3",
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13.sp,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Biryani,Desserts,Kacchi",
                    ),
                    const Spacer(),
                    Text(
                      "Price Range 250 -550",
                      style:
                          TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 11.sp,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedFontSize: 11.sp,
          selectedFontSize: 11.sp,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart), label: "Go Out"),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits), label: "pro"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_sharp), label: "Grocery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Nutrition")
          ]),
    );
  }
}
