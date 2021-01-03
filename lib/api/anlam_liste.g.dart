part of 'anlam_liste.dart';

AnlamListe _$AnlamListeFromJson(Map<String, dynamic> json) {
  return AnlamListe(
    json['anlam'] as String,
    json['orneklerListe'] == null
        ? OrnekListe('', Yazar(''))
        : OrnekListe.fromJson(json['orneklerListe'][0] as Map<String, dynamic>),
    json['ozelliklerListe'] == null
        ? [OzelliklerListe('')]
        : (json['ozelliklerListe'] as List)
            .map((e) => OzelliklerListe.fromJson(e as Map<String, dynamic>))
            .toList(),
  );
}

Map<String, dynamic> _$AnlamListeToJson(AnlamListe instance) =>
    <String, dynamic>{
      'anlam': instance.anlam,
      'orneklerListe': instance.orneklerListe,
      'ozelliklerListe': instance.ozelliklerListe,
    };
