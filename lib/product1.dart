import 'package:flutter/material.dart';

class pizza extends StatelessWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70),
                      child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Container(
                          height: 300,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/superfresh.jpg"),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Satın aldıktan sonra buzdolabında 24 saat, buzlukta ise 7 gün saklayabileceğiniz Superfresh Pizza King 4'lü, -18 derecelik derin dondurucuda 1 yıla kadar saklanıyor. Pizzanızı hazırlamak için önceden ısıtılmış 250 derecelik fırında 8 ile 10 dakika arasında tutmanız yeterli.",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Fiyat: 20.50"
                        ,style: TextStyle(fontSize: 25,color: Colors.black),),
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

