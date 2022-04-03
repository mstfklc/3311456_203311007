import 'package:ceptemarket/basket.dart';
import 'package:ceptemarket/productList.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int sayfa_index = 0;
  Widget sayfaIndex = urun_liste();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaIndex,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white38,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Ürünler'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Sepet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp), label: 'Hesabım'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.deepOrange,
        selectedFontSize: 15,
        currentIndex: sayfa_index,
        onTap: (int) {
          setState(() {
            sayfa_index = int;
            if (sayfa_index == 0) sayfaIndex = urun_liste();
            if (sayfa_index == 1) sayfaIndex = sepet();
            if (sayfa_index == 2) sayfaIndex = hesabim();
          });
        },
      ),
    );
  }
}
