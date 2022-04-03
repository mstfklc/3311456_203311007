import 'package:ceptemarket/address.dart';
import 'package:ceptemarket/product1.dart';
import 'package:ceptemarket/productList.dart';
import 'package:ceptemarket/products.dart';
import 'package:ceptemarket/register.dart';
import 'package:ceptemarket/userInfo.dart';
import 'package:ceptemarket/wallet.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'navigation_bar.dart';

void main() => runApp(cepteMarket());

class cepteMarket extends StatelessWidget {
  const cepteMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => login(),
        "/navigationBar": (context) => const navigationBar(),
        "/register": (context) => const register(),
        "/bilgiler": (context) => const bilgiler(),
        "/adreslerim": (context) => const adreslerim(),
        "/cuzdan": (context) => cuzdan(),
        "/urunler": (context) => const urunler(),
        "/urun_liste": (context) => const urun_liste(),
        "/pizza": (context) => const pizza(),
      },
      title: "Cepte Market",
    );
  }
}
