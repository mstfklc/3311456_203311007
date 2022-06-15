import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yardım"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onDoubleTap: (){
              Navigator.pushNamed(context, "/kvkk");
            },
            child: ListTile(
              title: Text("Müşteri KVKK metni"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          ListTile(
            title: Text("Gizlilik Politikası"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            title: Text("Kullanım Koşulları"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),


        ],
      ),

    );
  }
}
