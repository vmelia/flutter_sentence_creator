import 'package:flutter_sentence_creator/services/http_sentence_provider.dart';
import 'package:get_it/get_it.dart';
import 'contracts/sentence_provider.dart';

var locator = GetIt.instance;

void setupLocator() {
  GetIt.I.registerSingleton<SentenceProvider>(HttpSentenceProvider());
}