import 'package:flutter/material.dart';

class urun_liste extends StatelessWidget {
  const urun_liste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ürün Listesi",
        ),
        leading: GestureDetector(
          child: Icon(Icons.production_quantity_limits),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [Image.asset(
            "assets/images/supermarket.jpg",
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,
                children: [

                InkWell(
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                      image: DecorationImage(image: AssetImage("assets/images/deneme.jpg"),fit: BoxFit.cover)
                    ),
                    height: 50,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Dondurulmuş Ürünler",
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
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    height: 50,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emoji_food_beverage),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "İçecekler",
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
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    height: 50,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.free_breakfast,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Kahvaltılık",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],),
            ),
          ],
        )
      ),
    );
  }
}
