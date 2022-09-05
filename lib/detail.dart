import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:like_button/like_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Future<bool> onLikeButtonTapped(bool isLiked) async {
    print(data);
    return !isLiked;
  }

  dynamic data = Get.arguments;
  CarouselController buttonCarouselController = CarouselController();
  int _initialPage = 1;
  List<dynamic> tempArray = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: SizedBox(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            elevation: 2,
                            shadowColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(Icons.arrow_back))),
                        Card(
                          elevation: 2,
                          shadowColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LikeButton(
                                likeBuilder: (bool isLiked) {
                                  return isLiked
                                      ? const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 25,
                                        )
                                      : const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.black,
                                          size: 25,
                                        );
                                },
                                onTap: onLikeButtonTapped),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.blue.withOpacity(0.4),
                              spreadRadius: 1)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () =>
                              buttonCarouselController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear),
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 1.5,
                    height: height / 4,
                    child: CarouselSlider.builder(
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          SizedBox(
                              width: width / 1.5,
                              height: height / 4,
                              child: PhotoView(
                                maxScale: PhotoViewComputedScale.covered,
                                backgroundDecoration: const BoxDecoration(
                                    color: const Color(0xFFFAFAFA)),
                                imageProvider: AssetImage(
                                    'assets/images/nike$itemIndex.jpg'),
                              )),
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        initialPage: _initialPage,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 1.1,
                        // autoPlay: true,
                        // autoPlayCurve: Curves.fastOutSlowIn,
                        // autoPlayAnimationDuration: Duration(seconds: 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.blue.withOpacity(0.4),
                              spreadRadius: 1)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () => buttonCarouselController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear),
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                  width: width,
                  height: height / 1.7,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(60.0),
                          topRight: Radius.circular(60.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.6),
                            offset: const Offset(0.0, 0.5), //(x,y)
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          children: [
                            SizedBox(height: height / 16),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Nike Court Vision Low',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600, shadows: [
                                    Shadow(
                                        color: Colors.blue.withOpacity(0.5),
                                        offset: const Offset(0.1, 1.1),
                                        blurRadius: 0.8)
                                  ])),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Row(
                                      children: const [
                                        Text('\$',
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue)),
                                        SizedBox(width: 4),
                                        Text('240',
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  )
                                ]),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3.5,
                                    minRating: 1,
                                    itemSize: 20.0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('Avaible Sizes',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600)),
                                ]),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 50,
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: CustomRadioButton(
                                    elevation: 2,
                                    absoluteZeroSpacing: false,
                                    selectedBorderColor: Colors.blue.withOpacity(0.7),
                                    unSelectedBorderColor: Colors.blue.withOpacity(0.7),
                                    unSelectedColor:
                                        Theme.of(context).canvasColor,
                                    buttonLables: const [
                                      'US 5',
                                      'US 6',
                                      'US 7',
                                      'US 8',
                                      'US 9',
                                      'US 10',
                                    ],
                                    buttonValues: const [
                                      'US 5',
                                      "US 6",
                                      "US 7",
                                      "US 8",
                                      'US 9',
                                      'US 10',
                                    ],
                                    buttonTextStyle: const ButtonTextStyle(
                                        selectedColor: Colors.white,
                                        unSelectedColor: Colors.blue,
                                        textStyle: TextStyle(fontSize: 16)),
                                    radioButtonValue: (value) {
                                      print(value);
                                    },
                                    selectedColor: Colors.blue),
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('Color',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600)),
                                ]),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Row(children: [
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Colors.blue.withOpacity(0.3),
                                        radius: 15),
                                    CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 10),
                                  ],
                                ),
                                SizedBox(width: 13),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Colors.red.withOpacity(0.3),
                                        radius: 15),
                                    CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 10),
                                  ],
                                ),
                                SizedBox(width: 13),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Colors.green.withOpacity(0.3),
                                        radius: 15),
                                    CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 10),
                                  ],
                                ),
                                SizedBox(width: 13),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.3),
                                        radius: 15),
                                    CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 10),
                                  ],
                                ),
                                SizedBox(width: 13),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            Colors.purple.withOpacity(0.3),
                                        radius: 15),
                                    CircleAvatar(
                                        backgroundColor: Colors.purple,
                                        radius: 10),
                                  ],
                                ),
                              ]),
                            ),
                            SizedBox(height: 15),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('Description',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600)),
                                ]),
                            SizedBox(height: 10),
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12.0, bottom: 22),
                                  child: Text(
                                      "So you're in love with the classic look of '80s basketball, but you've got a thing for the fast-paced culture of today's game. Meet the Nike Court Vision Low. Its crisp, textured upper and stitched overlays are inspired by the hook-shot look of old-school b-ball while its super-plush, low-cut collar keeps it sleek and comfortable day in and day out.So you're in love with the classic look of '80s basketball, but you've got a thing for the fast-paced culture of today's game. Meet the Nike Court Vision Low. Its crisp, textured upper and stitched overlays are inspired by the hook-shot look of old-school b-ball while its super-plush, low-cut collar keeps it sleek and comfortable day in and day out.So you're in love with the classic look of '80s basketball, but you've got a thing for the fast-paced culture of today's game. Meet the Nike Court Vision Low. Its crisp, textured upper and stitched overlays are inspired by the hook-shot look of old-school b-ball while its super-plush, low-cut collar keeps it sleek and comfortable day in and day out.",
                                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[600])
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))),
            ),
          ],
        ),
      ),
    ),
    bottomNavigationBar: ConvexAppBar(
          elevation: 0,
          activeColor: Colors.blue,
          backgroundColor: Colors.white,
          height: 40,
          top: -20,
    items: [
      TabItem(icon: Icon(Icons.add_shopping_cart_outlined, size:30, color: Colors.white)),
    ],
    initialActiveIndex: 0,//optional, default as 0
    onTap: (_) {print('Sepete Eklendi.');}
  )
    );
  }
}
