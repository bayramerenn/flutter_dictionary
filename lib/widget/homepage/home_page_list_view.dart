import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dictionary/api/sozluk.dart';
import 'package:flutter_dictionary/api/tdk_api.dart';

import '../idiom_card.dart';

class HomePageListView extends StatefulWidget {
  final String textWord;

  const HomePageListView({Key key, this.textWord}) : super(key: key);

  @override
  _HomePageListViewState createState() => _HomePageListViewState();
}

class _HomePageListViewState extends State<HomePageListView> {
  Future<List<Sozluk>> getWords() async {
    if (widget.textWord.isNotEmpty) {
      var response = await TdkApi.getWord(widget.textWord);

      Iterable list = json.decode(response.body);
      return list.map((e) => Sozluk.fromJson(e)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getWords(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Sozluk sozluk = snapshot.data[0];
          sozluk.anlamlarListe.forEach((element) {});
          return SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: getIdiomCard(sozluk),
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }

  List<Widget> getIdiomCard(Sozluk sozluk) {
    List<Widget> list = [];
    var ozellikListeAdi;
    print(sozluk);
    for (int i = 0; i < sozluk.anlamlarListe.length; i++) {
      if (sozluk.anlamlarListe[i].ozelliklerListe[0].tam_adi != '') {
        ozellikListeAdi = sozluk.anlamlarListe[i].ozelliklerListe;
      }
      list.add(
        IdiomCard(
          title: sozluk.anlamlarListe[i].anlam,
          content: sozluk.anlamlarListe[i].orneklerListe.ornek,
          writer: sozluk.anlamlarListe[i].orneklerListe.yazar.yazarAdi,
          ozelliklerListe: ozellikListeAdi,
        ),
      );
    }

    return list;
  }
}
