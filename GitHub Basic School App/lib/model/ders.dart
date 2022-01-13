class DersBilgiModel {
  String dersAdi = "";
  String dersNotu = "";
  int kredi = 0;
}

class NotModel {
  const NotModel(this.puanNotu, this.puanAdi);
  final String puanAdi;
  final double puanNotu;
}

class KrediNotModel {
  const KrediNotModel(this.krediNotu, this.krediAdi);
  final String krediAdi;
  final int krediNotu;
}


