import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class login extends StatefulWidget {
  double logoWidth=10;
  double logoHeight=10;

  @override
  State<login> createState() => _loginState();

}

class _loginState extends State<login> {
  TextEditingController control_mail = TextEditingController();

  TextEditingController control_password = TextEditingController();


  Future<bool> login1() async {
    try {
      Globals.user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: control_mail.text.toString(),
          password: control_password.text.toString()
      );
      Navigator.pushNamed(context, "/navigationBar");
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return false;
    }
  }
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        widget.logoWidth = 150;
        widget.logoHeight = 150;
      });
    });}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )),
        ),
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceOut,
                  width: widget.logoWidth,
                  height: widget.logoHeight,
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.jpg"),
                              fit: BoxFit.contain)))),
              Text(
                "Cepte Market",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Güvenli Alışverişin Tek Adresi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextField(
                        enableInteractiveSelection: true,
                        controller: control_mail,
                        decoration: InputDecoration(
                            hintText: "Kullanıcı Adı",
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black)))),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: control_password,
                        decoration: InputDecoration(
                            hintText: "Parola",
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black))))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: Colors.black)),

                  child: MaterialButton(
                    onPressed: () =>
                      login1()

                    ,
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.indigoAccent[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white70),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Henüz Hesabınız Yok Mu? "),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "/register"),
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }
  }

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}


