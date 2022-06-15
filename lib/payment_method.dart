import 'package:ceptemarket/creditcardmodel.dart';
import 'package:ceptemarket/global.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  TextEditingController cardnumber = TextEditingController();
  TextEditingController cardname = TextEditingController();
  TextEditingController skt = TextEditingController();
  TextEditingController ccv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<CreditCards> getCreditcard() async {
      CollectionReference ref = FirebaseFirestore.instance.collection(
          "kartlar");
      String uid = Globals.user.user!.uid;
      var document = ref.doc(uid);
      var response = await document.get();

      CreditCards creditcard = CreditCards.fromJson(response.data() as dynamic);
      return creditcard;
    }

    Future<void> paymentfunc(number, name, skt, ccv) async {
      await FirebaseFirestore.instance
          .collection("kartlar")
          .doc(Globals.user.user!.uid)
          .set(
          CreditCards(number: number, name: name, skt: skt, ccv: ccv).toJson());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Ödeme Yöntemleri"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                    enableInteractiveSelection: true,
                    controller: cardnumber,
                    decoration: InputDecoration(
                        hintText: "Kart Numarası",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),SizedBox(height: 20,),
              SizedBox(
                width: 250,
                child: TextField(
                    enableInteractiveSelection: true,
                    controller: cardname,
                    decoration: InputDecoration(
                        hintText: ";Ad-Soyad",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),SizedBox(height: 20,),
              SizedBox(
                width: 250,
                child: TextField(
                    enableInteractiveSelection: true,
                    controller: skt,
                    decoration: InputDecoration(
                        hintText: "Son Kullanım Tarihi",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),SizedBox(height: 20,),
              SizedBox(
                width: 250,
                child: TextField(
                    enableInteractiveSelection: true,
                    controller: ccv,
                    decoration: InputDecoration(
                        hintText: "CCV",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)))),
              ),SizedBox(height: 20,),
              MaterialButton(
                onPressed: () =>
                {setState(()=>{paymentfunc(
                    cardnumber.text.toString(), cardname.text.toString(),
                    skt.text.toString(), ccv.text.toString())})

                }

                ,
                minWidth: double.infinity,
                height: 60,
                color: Colors.indigoAccent[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "Kaydet",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white70),
                ),
              ),
              FutureBuilder<CreditCards>
                (future:getCreditcard() ,
                  builder: (BuildContext context, AsyncSnapshot<CreditCards> snapshot)  {
                  if(snapshot.hasData){
                    return Column(
                      children: [Text(snapshot.data!.number),
                    Text(snapshot.data!.name),
                    Text(snapshot.data!.skt),
                    Text(snapshot.data!.ccv),],
                    );
                  }
                  else{
                    return Text("data");
                  }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
