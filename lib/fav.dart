import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {

bool isLiked = true;
  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(children: [
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
                                    onPressed: () {},
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
                            Text('Favorite',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300,
                                    shadows: [
                                      Shadow(
                                          color: Colors.blue.withOpacity(0.5),
                                          offset: const Offset(0.1, 1.4),
                                          blurRadius: 5)
                                    ])),
                            Text('Products',
                                style: TextStyle(
                                    fontSize: 35,
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
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: SizedBox(
                      width: width,
                      height: height/2,
                      child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                              child: ListTile(
                                leading: Transform.rotate(
                                    angle: -0.25,
                                    child: Image.asset('assets/images/nike1.jpg',
                                        width: 90, height: 90)),
                                title: Text('Nike Court Vision Low', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue)),
                                    Text('240',
                                        style: TextStyle(
                                            fontSize: 26, fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: LikeButton(
                                    bubblesColor: const BubblesColor(dotPrimaryColor: Colors.black, dotSecondaryColor: Colors.grey, dotThirdColor: Color(0xFF303030), dotLastColor: Color(0xFF616161)),
                                    circleColor: const CircleColor(start: Color(0xFF303030), end: Color(0xFF424242)),
                                                    likeBuilder: (bool isLiked) {
                                                      return !isLiked
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
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Divider(
                      color: Colors.blue.withOpacity(0.6), thickness: 1.05),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('6 items', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey)),
                      GestureDetector(
                        onTap: () {},
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 6),
                            child: Row(
                              children: [
                                Text('Clear All', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey)),
                                SizedBox(width: 8),
                                Icon(Icons.delete_sweep, color: Colors.red)
                              ],
                            ),
                          ),
                        ),
                      )
                  ],)
                ),
                ]))),
                );
  }
}