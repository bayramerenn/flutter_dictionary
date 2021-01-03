import 'package:json_annotation/json_annotation.dart';

part 'ozellikler_liste.g.dart';

@JsonSerializable()
class OzelliklerListe {
  String tam_adi;
  OzelliklerListe(this.tam_adi);

  factory OzelliklerListe.fromJson(Map<String, dynamic> json) =>
      _$OzelliklerListeFromJson(json);
}
