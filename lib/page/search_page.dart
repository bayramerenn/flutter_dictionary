import 'package:flutter/material.dart';
import 'package:flutter_dictionary/util/app_constant.dart';
import 'package:flutter_dictionary/util/fade_animation.dart';

class SearchPage extends StatefulWidget {
  List<String> _results;
  SearchPage(this._results);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isKeyboardVisible = false;
  List<String> vowels = ['ç', 'ğ', 'ı', 'ö', 'ş', 'ü', 'â', 'î', 'û'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FadeAnimation(
        0.3,
        Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 48,
                  color: AppConstant.colorVowelBg,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemCount: vowels.length,
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 32, left: 16),
                              child: Text(
                                vowels[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                !isKeyboardVisible
                    ? HistoryBody(
                        historyWord: widget._results,
                      )
                    : widget._results.length == 0
                        ? Center(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.history,
                                    color: Color(0xFFC6CBD2),
                                    size: 48,
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Text(
                                    'Aradığınız sözcük bulunamadı',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: AppConstant.colorBackButton,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Material(
                                    color: Colors.white,
                                    elevation: 4,
                                    shadowColor: Colors.black26,
                                    borderRadius: BorderRadius.circular(6),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(6),
                                      onTap: () {},
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20, horizontal: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'kalem',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: AppConstant.colorPrimary,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HistoryBody extends StatelessWidget {
  final List<String> historyWord;

  HistoryBody({this.historyWord});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 24,
            right: 242,
            bottom: 12,
            left: 24,
          ),
          child: Text(
            'SON ARAMALAR',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: AppConstant.colorParagraph2),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: historyWord.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(historyWord);
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            historyWord[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: AppConstant.colorHeading),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
