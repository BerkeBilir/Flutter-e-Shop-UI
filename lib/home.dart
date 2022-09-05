import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'detail.dart';
import 'shop.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  bool? isLiked;
  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }

  int selectedpage = 0;
  final _pageNo = [Text('1'), ShopPage(), Text('3')];

  void _onItemTapped(int index) {
    setState(() {
      selectedpage = index;
    });
  }

  bool? like;

  _fetch() async {
    await FirebaseFirestore.instance
        .collection('fav')
        .doc('likes')
        .get()
        .then((ds) {
      like = ds['like'];
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
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
                                    _globalKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(Icons.menu))),
                          GestureDetector(
                            onTap: () {},
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
                                radius: 25.0,
                                backgroundColor: Colors.grey[350],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('e -',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w300,
                                  shadows: [
                                    Shadow(
                                        color: Colors.blue.withOpacity(0.5),
                                        offset: const Offset(0.1, 1.4),
                                        blurRadius: 5)
                                  ])),
                          Text('Shop',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  shadows: [
                                    Shadow(
                                        color: Colors.blue.withOpacity(0.5),
                                        offset: const Offset(0.1, 1.4),
                                        blurRadius: 5)
                                  ]))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width / 1.5,
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2,
                          shadowColor: Colors.blue,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Search',
                              prefixIcon:
                                  const Icon(Icons.search_rounded, size: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: 60,
                      child: Column(children: [
                        Expanded(
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Card(
                                    elevation: 2,
                                    shadowColor: Colors.blue,
                                    color: Color(0xFFF6F6F6),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue.withOpacity(0.5),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Center(
                                          child: Text('Shoes',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Card(
                                    elevation: 2,
                                    shadowColor: Colors.blue,
                                    color: Color(0xFFF6F6F6),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue.withOpacity(0.5),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Center(
                                          child: Text('T-shirt',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Card(
                                    elevation: 2,
                                    shadowColor: Colors.blue,
                                    color: Color(0xFFF6F6F6),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue.withOpacity(0.5),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Center(
                                          child: Text('Hoodie',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Card(
                                    elevation: 2,
                                    shadowColor: Colors.blue,
                                    color: Color(0xFFF6F6F6),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue.withOpacity(0.5),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Center(
                                          child: Text('Slipper',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Card(
                                    elevation: 2,
                                    shadowColor: Colors.blue,
                                    color: Color(0xFFF6F6F6),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue.withOpacity(0.5),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Center(
                                          child: Text('Watch',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    )),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Popular',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                    color: Colors.blue.withOpacity(0.5),
                                    offset: const Offset(0.1, 1.1),
                                    blurRadius: 0.1)
                              ])),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Divider(
                      color: Colors.blue.withOpacity(0.6), thickness: 1.05),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: SizedBox(
                    height: height / 2.5,
                    child: Column(children: [
                      Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(DetailPage());
                                },
                                child: Card(
                                    color: Color(0xFFF6F6F6),
                                    elevation: 4,
                                    shadowColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: SizedBox(
                                      width: width / 2,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(children: [
                                              LikeButton(
                                                  likeBuilder: (bool isLiked) {
                                                    return isLiked
                                                        ? Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 30,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .favorite_border_outlined,
                                                            color: Colors.black,
                                                            size: 30,
                                                          );
                                                  },
                                                  onTap: onLikeButtonTapped),
                                            ]),
                                          ),
                                          Container(
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 65,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.2),
                                                ),
                                                CircleAvatar(
                                                  radius: 75,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.3),
                                                ),
                                                CircleAvatar(
                                                  radius: 85,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.4),
                                                ),
                                                Transform.rotate(
                                                    angle: -0.15,
                                                    child: Image.asset(
                                                        'assets/images/nike1.jpg',
                                                        width: width / 0.9))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text('Nike Court Vision Low',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("\$",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.blue)),
                                                Text('240',
                                                    style: TextStyle(
                                                        fontSize: 26,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            );
                          }
                          ),
                      )
                    ]),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Daily',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                    color: Colors.blue.withOpacity(0.5),
                                    offset: const Offset(0.1, 1.1),
                                    blurRadius: 0.1)
                              ])),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Divider(
                      color: Colors.blue.withOpacity(0.6), thickness: 1.05),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    bottom: 40,
                  ),
                  child: SizedBox(
                    height: height / 2.5,
                    child: Column(children: [
                      Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(DetailPage());
                                },
                                child: Card(
                                    color: Color(0xFFF6F6F6),
                                    elevation: 4,
                                    shadowColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    child: SizedBox(
                                      width: width / 2,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(children: [
                                              LikeButton(
                                                  likeBuilder: (bool isLiked) {
                                                    return isLiked
                                                        ? Icon(
                                                            Icons.favorite,
                                                            color: Colors.red,
                                                            size: 30,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .favorite_border_outlined,
                                                            color: Colors.black,
                                                            size: 30,
                                                          );
                                                  },
                                                  onTap: onLikeButtonTapped),
                                            ]),
                                          ),
                                          Container(
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 65,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.2),
                                                ),
                                                CircleAvatar(
                                                  radius: 75,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.3),
                                                ),
                                                CircleAvatar(
                                                  radius: 85,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.4),
                                                ),
                                                Transform.rotate(
                                                    angle: -0.15,
                                                    child: Image.asset(
                                                        'assets/images/nike1.jpg',
                                                        width: width / 0.9))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text('Nike Court Vision Low',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("\$",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.blue)),
                                                Text('240',
                                                    style: TextStyle(
                                                        fontSize: 26,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            );
                          }
                          ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(child: Text('Drawer')),
            ),
            ListTile(
              title: const Text('Item 1'),
            ),
            ListTile(
              title: const Text('Item 2'),
            ),
            ListTile(
              title: const Text('Item 3'),
            ),
            ListTile(
              title: const Text('Item 4'),
            ),
          ],
        ),
      ),
    );
  }
}
