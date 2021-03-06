import 'package:flutter/material.dart';

class urunler extends StatelessWidget {
  const urunler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("Dondurulmuş Ürünler"),
        leading: GestureDetector(
          child: Icon(Icons.fastfood),
        ),
      )),
      body: SafeArea(
        child: GridView.count(
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onLongPress: () => Navigator.pushNamed(context, "/pizza"),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/freeze.jpg"))),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/pizza"),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/freeze.jpg"))),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/pizza"),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/freeze.jpg"))),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/pizza"),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/freeze.jpg"))),
                ),
              ),
            ]),
      ),
    );
  }
}
