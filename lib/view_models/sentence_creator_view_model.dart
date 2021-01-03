import 'package:flutter/material.dart';
import 'package:flutter_sentence_creator/contracts/sentence_provider_interface.dart';
import '../locator.dart';

class SentenceCreatorViewModel with ChangeNotifier {
  SentenceProviderInterface _sentenceProvider;
  String _sentence = '';

  SentenceCreatorViewModel() {
    _sentenceProvider = locator<SentenceProviderInterface>();
  }

  void createSentence() async {
    _sentence = await _sentenceProvider.generateSentence();
  
    notifyListeners();
  }

  String get sentence => _sentence;
}
