// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sozluk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sozluk _$SozlukFromJson(Map<String, dynamic> json) {
  return Sozluk(
    json['madde'] as String,
    json['lisan'] as String,
    json['birlesikler'] as String,
    (json['anlamlarListe'] as List)
        ?.map((e) =>
            e == null ? null : AnlamListe.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SozlukToJson(Sozluk instance) => <String, dynamic>{
      'madde': instance.madde,
      'lisan': instance.lisan,
      'birlesikler': instance.birlesikler,
      'anlamlarListe': instance.anlamlarListe,
    };
