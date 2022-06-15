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
          onTap: (){},
          child: Icon(Icons.production_quantity_limits),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/images/supermarket.jpg",
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: AssetImage("assets/images/freeze.jpg"),
                            fit: BoxFit.cover)),
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Dondurulmuş Ürünler",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: AssetImage("assets/images/acc.jpg"),
                            fit: BoxFit.cover)),
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Dondurulmuş Ürünler",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, "/urunler"),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: AssetImage("assets/images/freeze.jpg"),
                            fit: BoxFit.cover)),
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Dondurulmuş Ürünler",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
