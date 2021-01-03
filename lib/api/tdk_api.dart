import 'package:http/http.dart' as http;

class TdkApi {
  static Future getWord(String word) {
    return http.get("https://sozluk.gov.tr/gts?ara=$word");
  }
}
