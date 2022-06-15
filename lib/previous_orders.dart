import 'package:flutter/material.dart';

class PreviousOrders extends StatelessWidget {
  const PreviousOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geçmiş Siparişler"),
      ),
      body: Column(children: [
        ListTile(title: Text("11.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("72.30TL"),),
        ListTile(title: Text("10.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("60.70TL"),),
        ListTile(title: Text("09.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("53.30TL"),),
        ListTile(title: Text("09.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("53.30TL"),),
        ListTile(title: Text("08.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("40.60TL"),),
        ListTile(title: Text("05.06.2022"),subtitle: Text("Ev"),leading: Icon(Icons.home),trailing: Text("20.30TL"),),
      ],),
    );
  }
}
