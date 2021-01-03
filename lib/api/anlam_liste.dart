import 'package:flutter_dictionary/api/yazar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ornek_liste.dart';
import 'ozellikler_liste.dart';

part 'anlam_liste.g.dart';

@JsonSerializable()
class AnlamListe {
  String anlam;
  OrnekListe orneklerListe;
  List<OzelliklerListe> ozelliklerListe;
  AnlamListe(this.anlam, this.orneklerListe, this.ozelliklerListe);

  factory AnlamListe.fromJson(Map<String, dynamic> json) =>
      _$AnlamListeFromJson(json);
}
