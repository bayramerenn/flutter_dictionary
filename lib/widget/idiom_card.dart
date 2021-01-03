import 'package:flutter/material.dart';
import 'package:flutter_dictionary/api/ozellikler_liste.dart';
import 'package:flutter_dictionary/util/app_constant.dart';

class IdiomCard extends StatelessWidget {
  final String title;
  final String content;
  final String writer;
  final List<OzelliklerListe> ozelliklerListe;

  const IdiomCard(
      {Key key,
      @required this.title,
      @required this.content,
      this.writer = '',
      this.ozelliklerListe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: getRows(ozelliklerListe),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '$title',
                style: TextStyle(
                  fontSize: AppConstant.fontSizeIdiomCardTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '$content',
                style: TextStyle(
                  fontSize: AppConstant.fontSizeIdiomCardContent,
                ),
              ),
              Text(
                writer == '' ? '' : 'Yazar :$writer',
                style: TextStyle(
                  fontSize: AppConstant.fontSizeIdiomCardContent,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(
                width: 3,
                color: AppConstant.colorParagraph2.withOpacity(.3),
              ),
            ),
          ),
          width: double.infinity,
        ),
      ),
    );
  }

  List<Widget> getRows(List<OzelliklerListe> ozelliklerListe) {
    List<Widget> result = [];
    for (int i = 0; i < ozelliklerListe.length; i++) {
      result.add(
        Text(
          ozelliklerListe[i].tam_adi + ';',
          style: TextStyle(
            fontSize: AppConstant.fontSizeIdiomCardContent,
          ),
        ),
      );
      result.add(SizedBox(
        width: 3,
      ));
    }
    return result;
  }
}
