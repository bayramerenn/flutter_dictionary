import 'package:flutter_dictionary/api/yazar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ornek_liste.g.dart';

@JsonSerializable()
class OrnekListe {
  String ornek;
  Yazar yazar;
  OrnekListe(this.ornek, this.yazar);

  factory OrnekListe.fromJson(Map<String, dynamic> json) =>
      _$OrnekListeFromJson(json);
}
