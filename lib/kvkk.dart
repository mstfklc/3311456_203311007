import 'package:flutter/material.dart';

class Kvkk extends StatefulWidget {
  const Kvkk({Key? key}) : super(key: key);

  @override
  State<Kvkk> createState() => _KvkkState();
}

class _KvkkState extends State<Kvkk> {
  bool dil=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KVKK"),),
body: GestureDetector(
  onHorizontalDragCancel:(){
    setState(() {
      dil=false;
    });
  } ,
  child: SingleChildScrollView(
    child: Column(
      children: [
        Text(''' Kişisel Verilerinizle İlgili Haklarınız Nelerdir?
            KVKK’nın 11. maddesi uyarınca aşağıdaki haklara sahipsiniz:

            Kişisel verilerinizin işlenip işlenmediğini öğrenme,
            Kişisel verileriniz işlenmişse buna ilişkin bilgi talep etme,
            Kişisel verilerinizin işlenme amacını ve amacına uygun kullanılıp kullanılmadığını öğrenme,
            Kişisel verilerinizin yurt içinde veya yurt dışında aktarıldığı 3. kişileri bilme,
            Kişisel verileriniz eksik veya yanlış işlenmişse bunların düzeltilmesini isteme,
            KVKK’nın 7. maddesinde öngörülen şartlar çerçevesinde kişisel verilerinizin silinmesini veya yok edilmesini isteme,
            Kişisel verilerinizin KVKK’nın 7. maddesi kapsamında silinmesi veya yok edilmesi ve kişisel verilerinizin eksik veya yanlış işlenmiş olması halinde bunların düzeltilmesine ilişkin taleplerinizin, kişisel verilerin aktarıldığı üçüncü kişilere bildirilmesini isteme,
            Kişisel verilerinizin münhasıran otomatik sistemler ile analiz edilmesi nedeniyle aleyhinize bir sonucun ortaya çıkmasına itiraz etme,
            Kişisel verilerinizin kanuna aykırı olarak işlenmesi sebebiyle zarara uğramanız hâlinde zararın giderilmesini talep etme.'''),



        Text('''What Are Your Rights Regarding Your Personal Data?
In accordance with Article 11 of the KVKK, you have the following rights:

      Learning whether your personal data is processed or not,
      If your personal data has been processed, requesting information about it,
      To learn the purpose of processing your personal data and whether it is used in accordance with its purpose,
      Knowing the third parties to whom your personal data is transferred in the country or abroad,
      Requesting correction of your personal data if it is incomplete or incorrectly processed,
      Requesting the deletion or destruction of your personal data within the framework of the conditions stipulated in Article 7 of the KVKK,
      If your personal data is deleted or destroyed within the scope of Article 7 of the KVKK and your personal data is incomplete or incorrectly processed, requesting that your requests for correction be notified to the third parties to whom the personal data has been transferred,
      Objecting to the emergence of a result against you due to the analysis of your personal data exclusively by automated systems,
      To request the compensation of the damage in case you suffer damage due to the unlawful processing of your personal data.''')
      ],
    ),
  ),
),    );
  }
}
