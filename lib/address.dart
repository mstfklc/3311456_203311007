import 'package:flutter/material.dart';

class adreslerim extends StatelessWidget {
  const adreslerim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adreslerim"),
        leading: GestureDetector(
          child: Icon(Icons.location_city),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.47,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration:  InputDecoration(
                              labelText: "İl",
                              hintText: "Konya",
                              alignLabelWithHint: false,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder:  OutlineInputBorder(
                                  borderSide:
                                       BorderSide(color: Colors.black)),
                              border:  OutlineInputBorder(
                                  borderSide:
                                       BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.47,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration:  InputDecoration(
                              labelText: "İlçe",
                              hintText: "Selçuklu",
                              alignLabelWithHint: false,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder:  OutlineInputBorder(
                                  borderSide:
                                       BorderSide(color: Colors.black)),
                              border:  OutlineInputBorder(
                                  borderSide:
                                       BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:  InputDecoration(
                        labelText: "Adres",
                        hintText: "Bosna Hersek Mahallasi Ertugay sokak",
                        alignLabelWithHint: false,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder:  OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.black)),
                        border:  OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.black))),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/maps.jpg"))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
