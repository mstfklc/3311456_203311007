import 'package:flutter/material.dart';

class Communication extends StatefulWidget {
  const Communication({Key? key}) : super(key: key);

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  bool eposta=true;
  bool sms=true;
  bool tel=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("İletişim Tercihleri"),),
      body: Column(children: [
        ListTile(subtitle:Text("Kampanyalarla ilgili eposta almak istiyorum."),title: Text("E-Posta"),trailing: Switch(onChanged: (value){
          setState(() {
            eposta=value;
          });
        }, value: eposta,),),
        ListTile(subtitle:Text("Kampanyalarla iligli sms almak istiyorum."),title: Text("SMS"),trailing: Switch(onChanged: (value){
          setState(() {
            sms=value;
          });
        }, value: sms,),),
        ListTile(subtitle:Text("Kampanyalarla ilgili aranmak istiyorum."),title: Text("Telefon"),trailing: Switch(onChanged: (value){
          setState(() {
            tel=value;
          });
        }, value: tel,),)
      ],),
    );
  }
}
