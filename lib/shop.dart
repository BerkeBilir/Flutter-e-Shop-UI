import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
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
                            Text('Shopping',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300,
                                    shadows: [
                                      Shadow(
                                          color: Colors.blue.withOpacity(0.5),
                                          offset: const Offset(0.1, 1.4),
                                          blurRadius: 5)
                                    ])),
                            Text('Cart',
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
                      height: height/2.5,
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                                            SizedBox(width: 5),
                                            Card(
                                              elevation: 1,
                                            shadowColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.blue.withOpacity(0.5),
                                                  width: 1.0),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: Text('x1',
                                        style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                              ),
                                            ),
                                  ],
                                ),
                                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined, color: Colors.red)),
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
                      Row(
                        children: [
                          Text('Total: ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.grey)),
                          Text("\$",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue)),
                                  Text('1500',
                                      style: TextStyle(
                                          fontSize: 26, fontWeight: FontWeight.w600)),
                        ],
                      )
                  ],)
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: height/22),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: width,
                        height: 50,
                        child: Center(child: Text('Next', style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.w500)))
                        ),
                        style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // <-- Radius
    ),
  ),
                    )
                  ),
                )
                ]))),
                );
  }
}
