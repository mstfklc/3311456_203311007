import 'package:ceptemarket/address.dart';
import 'package:ceptemarket/communication.dart';
import 'package:ceptemarket/invoice_details.dart';
import 'package:ceptemarket/kvkk.dart';
import 'package:ceptemarket/payment_method.dart';
import 'package:ceptemarket/previous_orders.dart';
import 'package:ceptemarket/product1.dart';
import 'package:ceptemarket/productList.dart';
import 'package:ceptemarket/products.dart';
import 'package:ceptemarket/register.dart';
import 'package:ceptemarket/support.dart';
import 'package:ceptemarket/userInfo.dart';
import 'package:ceptemarket/wallet.dart';
import 'package:flutter/material.dart';
import 'graphic.dart';
import 'login.dart';
import 'navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const cepteMarket());
}

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
        "/register": (context) =>  register(),
        "/bilgiler": (context) => const bilgiler(),
        "/adreslerim": (context) => const adreslerim(),
        "/cuzdan": (context) => cuzdan(),
        "/urunler": (context) => const urunler(),
        "/urun_liste": (context) => const urun_liste(),
        "/pizza": (context) => const pizza(),
        "/yardim": (context) => const Support(),
        "/gecmis_siparis": (context) => const PreviousOrders(),
        "/odeme_yontemi": (context) =>  PaymentMethod(),
        "/iletisim_tercihi": (context) => const Communication(),
        "/fatura_bilgisi": (context) => const InvoiceDetails(),
        "/kvkk": (context) => const Kvkk(),
        "/harcamalar": (context) => const Grafik(),
      },
      title: "Cepte Market",
    );
  }
}
