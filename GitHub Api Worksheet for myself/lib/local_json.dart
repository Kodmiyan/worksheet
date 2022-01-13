import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({Key? key}) : super(key: key);

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    arabalarJsonOku();
    return MaterialApp(
      title: "Local Json",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Local Json"),
        ),
        body: FutureBuilder<List<Araba>>(
          future: arabalarJsonOku(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Araba> arabaListesi = snapshot.data!;
              return ListView.builder(
                itemCount: arabaListesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arabaListesi[index].arabaAdi),
                    subtitle: Text(arabaListesi[index].ulke),
                    leading: Text(arabaListesi[index].model[0].modelAdi),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Future<List<Araba>> arabalarJsonOku() async {
    String okunanString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/arabalar.json');
    var jsonObject = jsonDecode(okunanString);
    /* debugPrint(okunanString);
    debugPrint("**************************************************");
    (jsonObject as List).map((e) => debugPrint(e.toString()));
    debugPrint(jsonObject.toString()); */
    List<Araba> tumArabalar = (jsonObject as List)
        .map((arabaMap) => Araba.fromMap(arabaMap))
        .toList();
    debugPrint(tumArabalar.length.toString());
    debugPrint(tumArabalar[0].model[0].modelAdi);
    return tumArabalar;
  }
}
