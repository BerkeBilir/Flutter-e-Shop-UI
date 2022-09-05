import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class DenemePage extends StatefulWidget {
  const DenemePage({super.key});

  @override
  State<DenemePage> createState() => _DenemePageState();
}

class _DenemePageState extends State<DenemePage> {
  bool? isLiked;

  String? img;
  int index = 1;

  _fetch() async {
    await FirebaseFirestore.instance
        .collection('products')
        .doc('popular')
        .collection('images')
        .doc('image${index++}')
        .get()
        .then((ds) {
      img = ds['name${index++}'];
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
  itemBuilder: (BuildContext context, int index) {
    return FutureBuilder(
                              future: _fetch(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState !=
                                    ConnectionState.done) {
                                  return Text('Loading...');
                                }
                                  return Center(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        elevation: 10,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Text(img.toString()),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                              });
  }
      ),
    );
  }
}
