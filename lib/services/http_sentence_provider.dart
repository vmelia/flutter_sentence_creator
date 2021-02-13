import 'package:flutter_sentence_creator/contracts/sentence_provider.dart';
import 'package:http/http.dart' as http;

class HttpSentenceProvider implements SentenceProvider {
  final String url =
      'http://themicropub.azurewebsites.net/api/SentenceGenerator/Generate';

  Future<String> generateSentence() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
