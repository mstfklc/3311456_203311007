import 'package:flutter/material.dart';

class cuzdan extends StatefulWidget {
  cuzdan({Key? key}) : super(key: key);

  @override
  State<cuzdan> createState() => _cuzdanState();
}

class _cuzdanState extends State<cuzdan> {
  int money = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cüzdanım"),
        leading: GestureDetector(
          child: Icon(Icons.account_balance_wallet),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.account_balance_wallet,
                size: 80,
                color: Colors.brown,
              ),
              Text(
                "Toplam Bakiye",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Text(
                "${money}",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    onPressed: () => setState(() {
                          money += 10;
                        }),
                    height: 60,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Bakiye Yükle",
                      style: TextStyle(fontSize: 25, color: Colors.black87),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
