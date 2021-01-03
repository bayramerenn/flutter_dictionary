import 'package:json_annotation/json_annotation.dart';

import 'anlam_liste.dart';

part "sozluk.g.dart";

@JsonSerializable()
class Sozluk {
  String madde;
  String lisan;
  String birlesikler;
  List<AnlamListe> anlamlarListe;

  Sozluk(this.madde, this.lisan, this.birlesikler, this.anlamlarListe);

  factory Sozluk.fromJson(Map<String, dynamic> json) => _$SozlukFromJson(json);
}
