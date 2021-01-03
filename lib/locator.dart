import 'package:flutter_sentence_creator/services/sentence_provider_service.dart';
import 'package:get_it/get_it.dart';
import 'contracts/sentence_provider_interface.dart';

var locator = GetIt.instance;

void setupLocator() {
  GetIt.I.registerSingleton<SentenceProviderInterface>(SentenceProviderService());
}