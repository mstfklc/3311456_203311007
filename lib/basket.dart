import 'package:flutter/material.dart';

class sepet extends StatelessWidget {
  const sepet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepetim"),
        leading: GestureDetector(
          child: Icon(Icons.shopping_cart),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_basket,
              size: 80,
            ),
            Text(
              "Sepetinizde Henüz Bir Ürün Bulunmamaktadır.",
              style: TextStyle(fontSize: 20),
            )
          ],
        )),
      ),
    );
  }
}
