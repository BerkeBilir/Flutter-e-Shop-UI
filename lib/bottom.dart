import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'fav.dart';
import 'home.dart';
import 'shop.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

int selectedpage = 0;
final _pageNo = [HomePage() , ShopPage() , FavPage()];

void _onItemTapped(int index) {
    setState(() {
      selectedpage = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNo.elementAt(selectedpage),
      bottomNavigationBar: ConvexAppBar(
          color: Colors.black,
          activeColor: Colors.blue.withOpacity(0.7),
          backgroundColor: Colors.white,
          top: -20,
    items: [
      TabItem(icon: Icons.home_outlined),
      TabItem(icon: Icons.shopping_bag_outlined),
      TabItem(icon: Icons.favorite_border_outlined),
    ],
    initialActiveIndex: selectedpage,//optional, default as 0
    onTap: _onItemTapped
  )
    );
  }
}