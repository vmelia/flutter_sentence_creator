import 'package:flutter/material.dart';
import 'package:flutter_sentence_creator/contracts/sentence_provider.dart';
import '../locator.dart';

class SentenceCreatorViewModel with ChangeNotifier {
  SentenceProvider _sentenceProvider;
  String _sentence = '';

  SentenceCreatorViewModel() {
    _sentenceProvider = locator<SentenceProvider>();
  }

  void createSentence() async {
    _sentence = await _sentenceProvider.generateSentence();
  
    notifyListeners();
  }

  String get sentence => _sentence;
}
