// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ortalama_hesapla/constants/app_constants.dart';
import 'package:ortalama_hesapla/model/ders.dart';

class OrtalamaApp extends StatefulWidget {
  const OrtalamaApp({Key? key}) : super(key: key);

  @override
  State<OrtalamaApp> createState() => _OrtalamaAppState();
}

class _OrtalamaAppState extends State<OrtalamaApp> {
  final GlobalKey formKey = GlobalKey<FormState>();
  var dropDownValueDerece = NotModel(0, "");
  var dropDownValueKredi = KrediNotModel(0, "");
  var toplam = 0;

  List<NotModel> derece = <NotModel>[
    const NotModel(5, "AA"),
    const NotModel(4.5, "AB"),
    const NotModel(4, "BB"),
    const NotModel(3.5, "BC"),
    const NotModel(3, "CC"),
    const NotModel(2.5, "CD"),
    const NotModel(2, "DD"),
    const NotModel(1.5, "DF"),
    const NotModel(1, "FF")
  ];
  List<KrediNotModel> kredi = <KrediNotModel>[
    const KrediNotModel(1, "1"),
    const KrediNotModel(2, "2"),
    const KrediNotModel(3, "3"),
    const KrediNotModel(4, "4"),
    const KrediNotModel(5, "5"),
    const KrediNotModel(6, "6"),
    const KrediNotModel(7, "7"),
    const KrediNotModel(8, "8"),
    const KrediNotModel(9, "9"),
    const KrediNotModel(10, "10"),
  ];

  List dersAdi = [];
  List dersBilgisi = [];
  List not = [];
  List puanNotu = [];
  List carpilmisNot = [];
  final textKontrol = TextEditingController();
  List<DersBilgiModel> sonBilgi = [];
  List toplamNot = [0];

  @override
  void dispose() {
    textKontrol.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    dropDownValueDerece = derece[0];
    dropDownValueKredi = kredi[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baslik(),
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: _buildForm(),
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "${dersAdi.length} Ders Girildi",
                      style: Sabitler.textStyle(
                          18, FontWeight.w900, Sabitler.anaRenk),
                    ),
                    Text(
                      toplamNot.last.toStringAsFixed(2),
                      style: Sabitler.textStyle(
                          48, FontWeight.w900, Sabitler.anaRenk),
                    ),
                    Text(
                      "Ortalama",
                      style: Sabitler.textStyle(
                          18, FontWeight.w900, Sabitler.anaRenk),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dersAdi.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.only(top: 16),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text(
                      (index + 1).toString(),
                      style: Sabitler.textStyle(
                          16, FontWeight.w900, Sabitler.anaRenk),
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CircleAvatar(
                      child: Text(carpilmisNot[index].toString()),
                    ),
                  ),
                  subtitle: Text(
                      "Harf notu : ${dersBilgisi[index]}, Kredi notu : ${not[index]}, Ortalamanız : ${carpilmisNot[index]}"),
                  title: Text(
                    dersAdi[index],
                    style: Sabitler.textStyle(
                        24, FontWeight.w900, Sabitler.anaRenk),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar baslik() {
    return AppBar(
      foregroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          "Ortalama Hesapla",
          style: Sabitler.textStyle(
            24,
            FontWeight.w600,
            Sabitler.anaRenk,
          ),
        ),
      ),
    );
  }

  _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          textInputGirisi(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                decoration: BoxDecoration(
                    color: Sabitler.ikincilRenk,
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton<dynamic>(
                  value: dropDownValueDerece,
                  items: derece.map((NotModel user) {
                    return DropdownMenuItem<NotModel>(
                      value: user,
                      child: Text(
                        user.puanAdi,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (dynamic value) {
                    setState(() {
                      dropDownValueDerece = value!;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Sabitler.ikincilRenk,
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                  value: dropDownValueKredi,
                  items: kredi.map((KrediNotModel user) {
                    return DropdownMenuItem<KrediNotModel>(
                      value: user,
                      child: Text(
                        user.krediAdi,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (dynamic value) {
                    setState(() {
                      dropDownValueKredi = value!;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    dersAdi.add(textKontrol.text);
                    dersBilgisi.add(dropDownValueDerece.puanAdi);
                    not.add(dropDownValueKredi.krediNotu);
                    puanNotu.add(dropDownValueDerece.puanNotu);
                    carpilmisNot.add(dropDownValueDerece.puanNotu *
                        dropDownValueKredi.krediNotu);

                    toplamNot.add(
                        (puanNotu.fold(0, (p, e) => e + p) / dersAdi.length));
                    debugPrint(
                        "${dersAdi.toString()}, $dersBilgisi , $puanNotu, $carpilmisNot, $not");
                  });
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Sabitler.anaRenk,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding textInputGirisi() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textKontrol,
        decoration: InputDecoration(
          filled: true,
          fillColor: Sabitler.ikincilRenk,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
