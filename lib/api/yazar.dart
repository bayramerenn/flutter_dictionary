import 'package:json_annotation/json_annotation.dart';

part 'yazar.g.dart';

@JsonSerializable()
class Yazar {
  String yazarAdi;
  Yazar(this.yazarAdi);

  factory Yazar.fromJson(Map<String, dynamic> json) => _$YazarFromJson(json);
}
