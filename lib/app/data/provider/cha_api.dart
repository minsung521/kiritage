import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

String audioUrl = "";

Future getInfo() async {
  String url = 'http://www.cha.go.kr/cha/SearchKindOpenapiList.do';
  http.Response response = await http.get(Uri.parse(url));
  final document = xml.parse(response.body);
  final s = document.findAllElements("item");
  print(s.length);
}

Future getInformationAudio(
    String kindCode,
    String designatedNum,
    String cityCode,
    ) async {
  String url =
      'http://www.cha.go.kr/cha/SearchVoiceOpenapi.do?ccbaKdcd=$kindCode&ccbaAsno=$designatedNum&ccbaCtcd=$cityCode&ccbaGbn=kr';

  http.Response response = await http.get(Uri.parse(url));

  final document = xml.parse(response.body);

  audioUrl =document
      .getElement('result')!
      .getElement('item')!.getElement('voiceUrl')!.text;
}

List<String> imageUrl = [];

Future getInformationImage(
    String kindCode,
    String designatedNum,
    String cityCode,
    ) async {
  String url =
      'http://www.cha.go.kr/cha/SearchImageOpenapi.do?ccbaKdcd=$kindCode&ccbaAsno=$designatedNum&ccbaCtcd=$cityCode';

  http.Response response = await http.get(Uri.parse(url));

  final document = xml.parse(response.body);


  imageUrl =document
      .getElement('result')!
      .getElement('item')!.findAllElements('imageUrl').map((e) => e.text).toList();

}

String info = "";

Future getInformationInfo(
    String kindCode,
    String designatedNum,
    String cityCode,
    ) async {
  String url =
      'http://www.cha.go.kr/cha/SearchKindOpenapiDt.do?ccbaKdcd=$kindCode&ccbaAsno=$designatedNum&ccbaCtcd=$cityCode';

  http.Response response = await http.get(Uri.parse(url));

  final document = xml.parse(response.body);

  print(document);

  info = document
      .getElement('result')!
      .getElement('item')!
      .getElement('content')!
      .text;
}

String videoUrl = "";

Future getInformationText() async {
  String url = 'http://www.cha.go.kr/cha/SearchKindOpenapiList.do';

  http.Response response = await http.get(
    Uri.parse(url),
  );

  print(response.body);
}

Future getInformationVideo(
    String kindCode,
    String designatedNum,
    String cityCode,
    ) async {
  String url =
      'http://www.cha.go.kr/cha/SearchVideoOpenapi.do?ccbaKdcd=$kindCode&ccbaAsno=$designatedNum&ccbaCtcd=$cityCode';

  http.Response response = await http.get(Uri.parse(url));

  final document = xml.parse(response.body);

  videoUrl = document
      .getElement('result')!
      .getElement('item')!
      .getElement('videoUrl')!
      .text;
}

Future getAll( String kindCode,
    String designatedNum,
    String cityCode,) async {
  getInformationInfo(kindCode, designatedNum, cityCode);
  getInformationImage(kindCode, designatedNum, cityCode);
  getInformationAudio(kindCode, designatedNum, cityCode);
  getInformationVideo(kindCode, designatedNum, cityCode);


}