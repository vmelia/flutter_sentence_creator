import 'package:flutter/material.dart';

class SentenceCreatorViewModel with ChangeNotifier {
  String _sentence = '';

  void createSentence() {
    // Get from server.
    _sentence =
        "Kitty kitty. Purr fight an alligator and win yet cats are cute yet gnaw the corn cob all of a sudden cat goes crazy, for ask to be pet then attack owners hand. Why use post when this sofa is here give me some of your food give me some of your food give me some of your food meh, i don't want it stare at the wall, play with food and get confused by dust sniff sniff i is not fat, i is fluffy and ooooh feather moving feather!, and always hungry. Naughty running cat rub butt on table and sun bathe, or pose purrfectly to show my beauty, i bet my nine lives on you-oooo-ooo-hooo";

    notifyListeners();
  }

  String get sentence => _sentence;
}
