import 'package:flutter/material.dart';

class hesabim extends StatelessWidget {
  const hesabim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hesap Detaylarım",
        ),
        leading: GestureDetector(
          child: Icon(Icons.person),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/bilgiler"),
                child: Container(
                  height: 50,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Kullanıcı Bilgilerim",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/adreslerim"),
                child: Container(
                  height: 50,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_city),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Adreslerim",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/cuzdan"),
                child: Container(
                  height: 50,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.account_balance_wallet, color: Colors.black),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Cüzdanım",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
