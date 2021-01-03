// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ornek_liste.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrnekListe _$OrnekListeFromJson(Map<String, dynamic> json) {
  return OrnekListe(
    json['ornek'] as String,
    json['yazar'] == null
        ? Yazar('')
        : Yazar.fromJson(json['yazar'][0] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrnekListeToJson(OrnekListe instance) =>
    <String, dynamic>{
      'ornek': instance.ornek,
      'yazar': instance.yazar,
    };
