import 'package:flutter/material.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fatura Bilgisi Ekle"),

      ),
      body: Column(
        children: [
          ListTile(title: Text("🇹🇷 Türkiye"),trailing: Icon(Icons.arrow_forward_ios),),
          Container(color: Colors.white,child: TextField(decoration: InputDecoration(
            hintText: "Vergi No/TC No",
            prefixIcon: Icon(Icons.numbers)
          ),)),
          ElevatedButton(onPressed: (){}, child: Text("Kaydet"))
        ],
      ),
    );
  }
}
