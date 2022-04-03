import 'package:flutter/material.dart';

class bilgiler extends StatelessWidget {
  const bilgiler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Bilgileri"),
        leading: GestureDetector(
          child: Icon(Icons.person),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                labelText: "Telefon No",
                                hintText: "05346610747",
                                alignLabelWithHint: false,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                enabledBorder: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                labelText: "Ad Soyad",
                                hintText: "Mustafa Kılıç",
                                alignLabelWithHint: false,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                enabledBorder: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                labelText: "Email",
                                hintText: "203311007@selcuk.edu.tr",
                                alignLabelWithHint: false,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                enabledBorder: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black))),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                          onPressed: () => Navigator.pushNamed(context, "/"),
                          height: 35,
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Bilgileri Güncelle",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
